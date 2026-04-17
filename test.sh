#!/bin/bash

set -eo pipefail
curl -sLO https://invisible-mirror.net/archives/ncurses/ncurses-6.6.tar.gz
tar -zxf ncurses-6.6.tar.gz
cd ncurses-6.6
./configure
make -C include
pwd
cd form
pwd
gcc -I../ncurses -I../menu -DHAVE_CONFIG_H -DBUILDING_FORM -I. -I../include -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -DNDEBUG -O2 --param max-inline-insns-single=1200  -fPIC -c fty_num.c
ls -latr
