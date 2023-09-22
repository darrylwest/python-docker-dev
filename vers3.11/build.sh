#!/bin/sh
# dpw@oakland.local
# 2018.01.25
#

set -eu

export VERSION=$( date +"%y.%m.%d" )
export NAME="python3.11"
export DOCKER_REPO=darrylwest
export IMAGE="$DOCKER_REPO/$NAME"

PWD=`pwd`
file="$PWD/install.tgz"

(
    cd ..
    tar czvf $file --user=1000 --group=1000 home
)

docker build \
    -t $IMAGE:$VERSION \
    -t $IMAGE:latest . 

# && docker push $IMAGE:$VERSION
