#!/bin/bash
set -u
set -e
rm -f ~/qptest/mem.log
for ((num=1; num<=600; num++)){
  date +%T &>>~/qptest/mem.log
  free -m &>>~/qptest/mem.log
  sleep 1s
}
