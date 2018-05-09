#!/bin/sh
set -u
set -e
rm -f ~/qptest/test.log
#geth --exec 'loadScript("./qptest/test.js")' attach ~/qdata/geth.ipc &>>~/qptest/test.log
geth --exec 'loadScript("./qptest/test.js")' attach ~/qdata/geth.ipc >&-
