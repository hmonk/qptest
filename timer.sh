#!/bin/sh
set -u
set -e

mkdir -p ~/qptest/timer




for ((num=1; num<=24; num++)){
    filename=$(date +%Y%m%d_%H)
    echo "start getting txpool per second, log being saved to qptest/timer/$filename.log ......"
    geth --exec 'loadScript("./qptest/timer.js")' attach ~/qdata/geth.ipc &>>./qptest/timer/$filename.log
}
