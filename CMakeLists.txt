cmake_minimum_required(VERSION 3.1)
project(server)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -w")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -w")
set(OPENSSL_ROOT_DIR /opt/homebrew/opt/openssl)

find_package(OpenSSL REQUIRED)
find_package(OpenCV REQUIRED PATHS /opt/homebrew/lib/cmake/opencv4 NO_DEFAULT_PATH)

include_directories(
    ${OpenCV_INCLUDE_DIRS}
    ${OPENSSL_INCLUDE_DIR}
    /usr/local/include
)

add_executable(server server.cpp)

target_link_libraries(server
    ${OpenCV_LIBRARIES}
    ${OPENSSL_LIBRARIES}
    opencv_core
    opencv_imgcodecs
    opencv_imgproc
)

set_target_properties(server PROPERTIES
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "Apple Development"
)

set_target_properties(server PROPERTIES
    XCODE_ATTRIBUTE_ENABLE_BITCODE "NO"
)

set_target_properties(server PROPERTIES
    XCODE_ATTRIBUTE_ARCHS "$(ARCHS_STANDARD)"
)

set_target_properties(server PROPERTIES
    XCODE_ATTRIBUTE_ONLY_ACTIVE_ARCH "YES"
)

set_target_properties(server PROPERTIES
    XCODE_ATTRIBUTE_VALID_ARCHS "arm64"
)
