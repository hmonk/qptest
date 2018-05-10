#!/bin/bash
set -u
set -e

sh constellation-start.sh
set -v
ARGS="--syncmode full --mine --rpc --rpcaddr 0.0.0.0 --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,quorum,istanbul"
PARA="--txpool.globalslots 8192 --metrics --targetgaslimit '200000000'"
geth --datadir qdata $ARGS --rpcport 9495 --port 30303 $PARA --unlock 0 --password pwd.txt
set +v
