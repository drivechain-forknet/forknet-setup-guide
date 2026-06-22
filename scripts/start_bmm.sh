#!/bin/bash
#
# Example usage:
# ./start_bmm.sh
# tail -F ~/logs/bmm_log.txt
~/scripts/bmm.sh &> ~/logs/bmm_log.txt &
