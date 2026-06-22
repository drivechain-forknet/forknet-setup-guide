#!/bin/bash
#
# Generate and set mnemonic for each sidechain
#
M_BITNAMES=`~/forknet-software/plain-bitnames/target/debug/plain_bitnames_app_cli generate-mnemonic`

M_BITASSETS=`~/forknet-software/plain-bitassets/target/debug/plain_bitassets_app_cli generate-mnemonic`

M_THUNDER=`~/forknet-software/thunder-rust/target/debug/thunder_app_cli generate-mnemonic`

M_TRUTHCOIN=`~/forknet-software/truthcoin-dc/target/debug/truthcoin_dc_app_cli generate-mnemonic`

M_PHOTON=`~/forknet-software/photon/target/debug/photon_app_cli generate-mnemonic`

M_ORCHARD=`~/forknet-software/thunder-orchard/target/debug/thunder_orchard_app_cli generate-mnemonic`

M_COINSHIFT=`~/forknet-software/coinshift-rs/target/debug/coinshift_app_cli generate-mnemonic`


~/forknet-software/plain-bitnames/target/debug/plain_bitnames_app_cli set-seed-from-mnemonic "$M_BITNAMES"

~/forknet-software/plain-bitassets/target/debug/plain_bitassets_app_cli set-seed-from-mnemonic "$M_BITASSETS"

~/forknet-software/thunder-rust/target/debug/thunder_app_cli set-seed-from-mnemonic "$M_THUNDER"

~/forknet-software/truthcoin-dc/target/debug/truthcoin_dc_app_cli set-seed-from-mnemonic "$M_TRUTHCOIN"

~/forknet-software/photon/target/debug/photon_app_cli set-seed-from-mnemonic "$M_PHOTON"

~/forknet-software/thunder-orchard/target/debug/thunder_orchard_app_cli set-seed-from-mnemonic "$M_ORCHARD"

~/forknet-software/coinshift-rs/target/debug/coinshift_app_cli set-seed-from-mnemonic "$M_COINSHIFT"

