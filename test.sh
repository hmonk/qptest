#!/bin/sh
set -u
set -e
rm -f test.log
geth --exec 'loadScript("./test.js")' attach ~/qdata/geth.ipc &>> test.log 
