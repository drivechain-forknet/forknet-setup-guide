# forknet-setup-guide


## Mainchain:
Clone:

https://github.com/drivechain-forknet/drivechain-forknet

Install build dependencies:

`git cmake build-essential libsqlite3-dev libboost-all-dev libzmq3-dev pkgconf`

Build:

`cmake -B build -DBUILD_GUI=OFF -DBUILD_BENCH=OFF -DBUILD_FUZZ_BINARY=OFF -DBUILD_GUI_TESTS=OFF -DBUILD_TESTS=OFF -DENABLE_IPC=OFF -DWITH_ZMQ=ON -DBUILD_UTIL=ON
cmake --build build -j $(nproc)`



## Enforcer:
Clone:

https://github.com/LayerTwo-Labs/bip300301_enforcer

Install dependencies:

`rustc cargo grpcurl/buf clang libclang-dev`

rustc and cargo must be installed using rustup or building will fail later:

`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`


Build:

```
git submodule update --init --recursive
cargo build
```

Now setup a local electrum server for the enforcer:

```
git clone https://github.com/mempool/electrs
cd electrs
cargo run --bin electrs --release -- \
    --network main \
    --cookie=user:password \
    --jsonrpc-import
```
