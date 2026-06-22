#!/bin/bash

# TODO run target instead of using cargo run?

cd /home/forknet/forknet-software/electrs

cargo run --bin electrs --release -- --cookie=rpcuser:rpcpass --jsonrpc-import --daemon-dir ~/.drivechain-forknet &> ~/logs/electrs_log.txt &

