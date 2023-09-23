#!/bin/sh
# dpw@oakland.local
# 2018.01.25
#

set -eu

[ uname -o -eq "Darwin" ] && {
    echo "Don't build on osx.  build on debian linux"
    exit 1
}

export VERSION=$( date +"%y.%m.%d" )
export NAME="python3.12"
export DOCKER_REPO=darrylwest
export IMAGE="$DOCKER_REPO/$NAME"

PWD=`pwd`
file="$PWD/install.tgz"

(
    cd ..
    tar czvf $file home
)

docker build \
    -t $IMAGE:$VERSION \
    -t $IMAGE:latest . 

echo "docker push $IMAGE:$VERSION"
