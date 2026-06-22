#!/bin/bash

# Get a new deposit address for each sidechain

ADDR_BITNAMES=`~/forknet-software/plain-bitnames/target/debug/plain_bitnames_app_cli get-new-address`

ADDR_BITASSETS=`~/forknet-software/plain-bitassets/target/debug/plain_bitassets_app_cli get-new-address`

ADDR_THUNDER=`~/forknet-software/thunder-rust/target/debug/thunder_app_cli get-new-address`

ADDR_TRUTHCOIN=`~/forknet-software/truthcoin-dc/target/debug/truthcoin_dc_app_cli get-new-address`

ADDR_PHOTON=`~/forknet-software/photon/target/debug/photon_app_cli get-new-address`

ADDR_ORCHARD=`~/forknet-software/thunder-orchard/target/debug/thunder_orchard_app_cli get-new-transparent-address`

ADDR_COINSHIFT=`~/forknet-software/coinshift-rs/target/debug/coinshift_app_cli get-new-address`

# Make a deposit to each sidechain

# 2 bitnames
~/forknet-software/grpcurl -d '{"sidechain_id": 2, "address" : "$ADDR_BITNAMES", "value_sats": 1000, "fee_sats": 100}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateDepositTransaction

# 4 bitassets
~/forknet-software/grpcurl -d '{"sidechain_id": 4, "address" : "$ADDR_BITASSETS", "value_sats": 1000, "fee_sats": 100}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateDepositTransaction

# 9 thunder
~/forknet-software/grpcurl -d '{"sidechain_id": 9, "address" : "$ADDR_THUNDER", "value_sats": 1000, "fee_sats": 100}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateDepositTransaction

# 13 truthcoin
~/forknet-software/grpcurl -d '{"sidechain_id": 13, "address" : "$ADDR_TRUTHCOIN", "value_sats": 1000, "fee_sats": 100}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateDepositTransaction

# 98 zside
~/forknet-software/grpcurl -d '{"sidechain_id": 98, "address" : "$ADDR_PHOTON", "value_sats": 1000, "fee_sats": 100}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateDepositTransaction

# 99 photon
~/forknet-software/grpcurl -d '{"sidechain_id": 99, "address" : "$ADDR_ORCHARD", "value_sats": 1000, "fee_sats": 100}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateDepositTransaction

# 255 coinshift
~/forknet-software/grpcurl -d '{"sidechain_id": 255, "address" : "$ADDR_COINSHIFT", "value_sats": 1000, "fee_sats": 100}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateDepositTransaction
