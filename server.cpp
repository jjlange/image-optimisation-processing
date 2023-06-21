// Copyright (C) 2023, Justin Lange
// Application for image processing and optimisation using OpenCV

// Settings for httplib
#define CPPHTTPLIB_OPENSSL_SUPPORT
#define CPPHTTPLIB_PARSER_ENABLED

// Include libraries
#include <httplib.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <opencv2/opencv.hpp>

// Port for HTTP server
#define PORT 8080

// Method to optimise the image
void optimiseImage(const std::string &inputFilename, const std::string &outputFilename)
{
    // Read the image from the specified file
    cv::Mat image = cv::imread(inputFilename, cv::IMREAD_COLOR);

    // Check if the image was loaded successfully
    if (image.empty())
    {
        std::cerr << "Failed to open image: " << inputFilename << std::endl;
        return;
    }

    // Apply image optimisation techniques here
    int width = 200;
    int height = static_cast<int>(image.rows * static_cast<float>(width) / image.cols);

    cv::Mat optimisedImage;
    cv::resize(image, optimisedImage, cv::Size(width, height));

    cv::cvtColor(optimisedImage, optimisedImage, cv::COLOR_BGR2GRAY);

    // Write the optimised image to the specified file
    cv::imwrite(outputFilename, optimisedImage);
}

// Entry point for the application
int main()
{
    // Define the HTTPLib server
    httplib::Server svr;

    // Routes
    svr.Get("/", [](const httplib::Request &, httplib::Response &res)
            { res.set_content(R"(
            <html>
            <head>
                <title>Image Upload</title>
            </head>
            <body>
                <h1>Image Upload</h1>
                <form action="/upload" method="post" enctype="multipart/form-data">
                    <input type="file" name="image" accept="image/jpg"><br><br>

                    <input type="submit" value="Upload">
                </form>
            </body>
            </html>
        )",
                              "text/html"); });

    svr.Post("/upload", [](const httplib::Request &req, httplib::Response &res, const httplib::ContentReader &content_reader)
             {
    if (req.is_multipart_form_data()) {
        httplib::MultipartFormDataItems files;
        content_reader(
            [&](const httplib::MultipartFormData &file) {
                files.push_back(file);
                return true;
            },
            [&](const char *data, size_t data_length) {
                files.back().content.append(data, data_length);
                return true;
            });

        // Find the uploaded image file
        auto imageFile = std::find_if(files.begin(), files.end(), [](const httplib::MultipartFormData &file) {
            return file.name == "image";
        });

        if (imageFile != files.end()) {
            std::ofstream outfile("received.jpg", std::ios::binary);
            outfile.write(imageFile->content.data(), static_cast<std::streamsize>(imageFile->content.size()));
            outfile.close();

            // Read checkbox value
            bool checkboxValue = false;
            auto checkbox = req.get_param_value("checkbox");
            if (!checkbox.empty() && checkbox == "on") {
                std::cout << "Checkbox is checked" << std::endl;
                checkboxValue = true;
            }

            // Optimize the received image
            optimiseImage("./received.jpg", "./optimized.jpg");

            // Read the optimized image and send it back to the client
            std::ifstream inputFile("./optimized.jpg", std::ios::binary | std::ios::ate);
            std::streamsize fileSize = inputFile.tellg();
            inputFile.seekg(0, std::ios::beg);

            std::vector<char> buffer(fileSize);
            if (inputFile.read(buffer.data(), fileSize)) {
                res.set_content(buffer.data(), static_cast<size_t>(fileSize), "image/jpeg");
            } else {
                res.set_content("Failed to read image", "text/plain");
                res.status = 500;
            }
        } else {
            res.set_content("No image uploaded", "text/plain");
            res.status = 400;
        }
    } else {
        res.set_content("Invalid request", "text/plain");
        res.status = 400;
    } });

    svr.set_error_handler([](const httplib::Request &req, httplib::Response &res)
                          {
        res.set_content("Not Found", "text/plain");
        res.status = 404; });

    svr.listen("0.0.0.0", PORT);
    return 0;
}
