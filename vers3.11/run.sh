#!/bin/sh
# darwest@ebay.com <darryl.west>
# 2017-07-30 09:11:16
#

cd ~/raincity/python-projects/

export NAME="python3.11"

# -v "$PWD":/home/dpw/

docker run -it -d -u dpw --network=service-net --hostname=python3.11 --name $NAME "darrylwest/$NAME"

