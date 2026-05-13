# forknet-setup-guide


## Mainchain:
Clone:

https://github.com/drivechain-forknet/drivechain-forknet

Install build dependencies:

`git cmake build-essential libsqlite3-dev libboost-all-dev libzmq3-dev pkgconf`

Build:

`cmake -B build -DBUILD_GUI=OFF -DBUILD_BENCH=OFF -DBUILD_FUZZ_BINARY=OFF -DBUILD_GUI_TESTS=OFF -DBUILD_TESTS=OFF -DENABLE_IPC=OFF -DWITH_ZMQ=ON -DBUILD_UTIL=ON
cmake --build build -j $(nproc)`
