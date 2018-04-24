#!/bin/bash
set -u
set -e
rm -f ~/qptest/mem.log
for ((num=1; num<=600; num++)){
  date +%T &>>mem.log
  free -m
  sleep 1s
}
