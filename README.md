# drivechain-ecash / forknet-setup-guide

# First we will get all of the required software installed:

## Mainchain:
Clone:

https://github.com/drivechain-forknet/drivechain-forknet

`git checkout drivechain-ecash`

Install build dependencies:

`git cmake build-essential libsqlite3-dev libboost-all-dev libzmq3-dev pkgconf`

Build:

`cmake -B build -DBUILD_GUI=OFF -DBUILD_BENCH=OFF -DBUILD_FUZZ_BINARY=OFF -DBUILD_GUI_TESTS=OFF -DBUILD_TESTS=OFF -DENABLE_IPC=OFF -DWITH_ZMQ=ON -DBUILD_UTIL=ON`

`cmake --build build -j $(nproc)`



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
cargo run --bin electrs --release -- --cookie=user:password --jsonrpc-import
```


# Sidechains:



## thunder-rust
Clone:

https://github.com/LayerTwo-Labs/thunder-rust.git

Build:
```
git submodule update --init
cargo build
```

Run:

`cargo run --bin thunder_app -- --headless`



## truthcoin-dc
Clone:

https://github.com/LayerTwo-Labs/truthcoin-dc

Build:
```
git submodule update --init
cargo build
```

Run:

`cargo run --bin truthcoin_dc_app -- --headless`



## photon
Clone:

https://github.com/LayerTwo-Labs/photon

Build:
```
git submodule update --init
cargo build
```

Run:

`cargo run --bin photon_app -- --headless`


## plain-bitassets
Clone:

https://github.com/LayerTwo-Labs/plain-bitassets

Build:
```
git submodule update --init
cargo build
```

Run:

`cargo run --bin plain_bitassets_app -- --headless`


## coinshift-rs
Clone:

https://github.com/LayerTwo-Labs/coinshift-rs

Install dependencies:

`libssl-dev`

Build:
```
git submodule update --init
cargo build
```

Run:

`cargo run --bin coinshift_app -- --headless`

## plain-bitnames
Clone:

https://github.com/LayerTwo-Labs/plain-bitnames

Build:
```
git submodule update --init
cargo build
```

Run:

`cargo run --bin plain_bitnames_app -- --headless`


## grpcurl
You will need a tool to interact with the enforcers grpc server
Example:
https://github.com/fullstorydev/grpcurl


# Next we will do any required configuration:

Mainchain configuration file:

`~/.drivechain-ecash/drivechain-ecash.conf`

```
rpcuser=user
rpcpassword=pass
server=1
rest=1
txindex=1
zmqpubsequence=tcp://localhost:29000
fallbackfee=0.001
```

# We will start up all of the required software:
Copy the logs/ and scripts/ folders from this repository. You will find scripts to start everything. Don't forget to set mnemonics for all sidechains.
