#!/bin/bash
set -u
set -e

sh constellation-start.sh
set -v
ARGS="--syncmode full --mine --rpc --rpcaddr 0.0.0.0 --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,quorum,istanbul"
geth --datadir qdata $ARGS --rpcport 9495 --port 30303 --txpool.globalslots 65536 --metrics --targetgaslimit '2000000000' --unlock 0 --password pwd.txt
set +v
