#!/bin/bash

# TODO Switch to using binary downloaded from releases

cd /home/forknet/forknet-software/bip300301_enforcer

cargo run -- \
  --node-rpc-addr=localhost:8332 \
  --node-rpc-user=rpcuser \
  --node-rpc-pass=rpcpass \
  --bitcoin-core-skip-version-check \
  --enable-mempool \
  --enable-wallet \
  --wallet-auto-create \
  --wallet-esplora-url=http://127.0.0.1:3000 \
  &> ~/logs/enforcer_log.txt &


