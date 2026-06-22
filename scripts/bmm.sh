#!/bin/bash
#
# Try to BMM every sidechains every 60 seconds
# 
# Example usage:
# ~/scripts/bmm.sh &
# tail -F ~/logs/bmm_log.txt
#
while true
do
    ~/forknet-software/plain-bitnames/target/debug/plain_bitnames_app_cli mine &

    ~/forknet-software/plain-bitassets/target/debug/plain_bitassets_app_cli mine  &

    ~/forknet-software/thunder-rust/target/debug/thunder_app_cli mine &

    ~/forknet-software/truthcoin-dc/target/debug/truthcoin_dc_app_cli mine &

    ~/forknet-software/photon/target/debug/photon_app_cli mine &

    ~/forknet-software/thunder-orchard/target/debug/thunder_orchard_app_cli mine &

    ~/forknet-software/coinshift-rs/target/debug/coinshift_app_cli mine &

    sleep 60
done




