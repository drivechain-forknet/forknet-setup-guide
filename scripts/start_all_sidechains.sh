#!/bin/bash

# TODO switch to using binaries from releases server

~/forknet-software/plain-bitnames/target/debug/plain_bitnames_app --headless &> ~/logs/bitnames_log.txt &

~/forknet-software/plain-bitassets/target/debug/plain_bitassets_app --headless &> ~/logs/bitassets_log.txt &

~/forknet-software/thunder-rust/target/debug/thunder_app --headless &> ~/logs/thunder_rust_log.txt &

~/forknet-software/truthcoin-dc/target/debug/truthcoin_dc_app --headless &> ~/logs/truthcoin_log.txt &

~/forknet-software/photon/target/debug/photon_app --headless &> ~/logs/photon_log.txt &

~/forknet-software/thunder-orchard/target/debug/thunder_orchard_app --headless &> ~/logs/thunder_orchard_log.txt &

~/forknet-software/coinshift-rs/target/debug/coinshift_app --headless &> ~/logs/coinshift_log.txt &
