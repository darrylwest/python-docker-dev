#!/bin/sh
# darwest@ebay.com <darryl.west>
# 2017-07-30 09:11:16
#

cd ~/raincity/python-projects/

# -u dpw --name python3.11 -v "$PWD":/home/dpw/

docker run -it -d -u dpw --name python3.11 python3.11

