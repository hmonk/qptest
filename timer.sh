#!/bin/sh
set -u
set -e

rm -f timer.log
geth --exec 'loadScript("./timer.js")' attach ~/qdata/geth.ipc &>>timer.log
