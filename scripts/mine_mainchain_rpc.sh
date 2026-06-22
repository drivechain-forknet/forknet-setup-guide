#!/bin/bash

# This will use the single thread generatetoaddress rpc to
# attempt mining a block - for testing

# every 5 minutes
watch -n 300 /home/forknet/forknet-software/drivechain-forknet/build/bin/bitcoin-cli generatetoaddress 1 19exFsNjCsLpwTsRZxHA7pUvEF8QTNCtDF 999999999


