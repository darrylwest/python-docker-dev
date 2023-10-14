#!/bin/sh
# darwest@ebay.com <darryl.west>
# 2017-07-30 09:11:16
#

cd ~/raincity/python-projects/

export NAME="mojo0.3.0"

# -v "$PWD":/home/dpw/

docker run -it -d -u dpw --name $NAME "darrylwest/$NAME"

