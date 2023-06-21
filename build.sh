sudo cmake -S . -B build -DCMAKE_OSX_ARCHITECTURES=arm64
cd ./build
sudo make
sudo ./server
