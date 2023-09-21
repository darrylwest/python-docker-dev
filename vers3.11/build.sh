#!/bin/sh
# dpw@oakland.local
# 2018.01.25
#

PWD=`pwd`
file="$PWD/install.tgz"

(
    cd ..
    tar czvf $file home
)

# docker build -t python3.11:latest .
