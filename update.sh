#!/bin/sh
set -u
set -e

cd ~/qptest
git pull
cd -

cp ~/qptest/shart.sh ~/
