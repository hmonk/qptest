#!/bin/sh
set -u
set -e

mkdir -p timer

filename=$(date +Y%m%d_%H)


for ((num=1; num<=24; num++)){
    geth --exec 'loadScript("./qptest/timer.js")' attach ~/qdata/geth.ipc &>>timer/$filename.log
}
