#!/bin/bash

# For someone who wants to build the software instead of downloading binaries
# TODO build grpcurl instead of downloading binary
#
# Download all of the things
cd ~/forknet_software
wget https://github.com/fullstorydev/grpcurl/releases/download/v1.9.3/grpcurl_1.9.3_linux_x86_64.tar.gz
git clone https://github.com/mempool/mempool/
git clone https://github.com/iwakura-rein/thunder-orchard
git clone https://github.com/LayerTwo-Labs/coinshift-rs
git clone https://github.com/LayerTwo-Labs/bip300301_enforcer
git clone https://github.com/LayerTwo-Labs/truthcoin-dc
git clone https://github.com/LayerTwo-Labs/thunder-rust
git clone https://github.com/LayerTwo-Labs/plain-bitassets
git clone https://github.com/LayerTwo-Labs/plain-bitnames
git clone https://github.com/LayerTwo-Labs/photon
git clone https://github.com/LayerTwo-Labs/simplepool

# TODO build all of the things
