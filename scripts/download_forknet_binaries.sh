#!/bin/bash

# TODO check file timestamps and compare to cached timestamps from last check

cd ~/forknet_software

# Download latest L2L binaries from https://releases.drivechain.info/
wget https://releases.drivechain.info/bip300301-enforcer-latest-x86_64-unknown-linux-gnu.zip
wget https://releases.drivechain.info/L2-S2-BitNames-latest-x86_64-unknown-linux-gnu.zip
wget https://releases.drivechain.info/L2-S4-BitAssets-latest-x86_64-unknown-linux-gnu.zip
wget https://releases.drivechain.info/L2-S9-Thunder-latest-x86_64-unknown-linux-gnu.zip
wget https://releases.drivechain.info/L2-S13-Truthcoin-latest-x86_64-unknown-linux-gnu.zip
wget https://releases.drivechain.info/L2-S99-Photon-latest-x86_64-unknown-linux-gnu.zip
wget https://releases.drivechain.info/L2-S255-Coinshift-latest-x86_64-apple-darwin.zip

# Download grpcurl release from github
wget https://github.com/fullstorydev/grpcurl/releases/download/v1.9.3/grpcurl_1.9.3_linux_x86_64.tar.gz

# Download repositories of software we don't have binaries for

# Download thunder-orchard
git clone https://github.com/iwakura-rein/thunder-orchard

# Download mempool/mempool
git clone https://github.com/mempool/mempool/

# Download simplepool
git clone https://github.com/LayerTwo-Labs/simplepool

# TODO build and upload to releases.drivechain.info
# Download forknet
git clone https://github.com/drivechain-forknet/drivechain-forknet
