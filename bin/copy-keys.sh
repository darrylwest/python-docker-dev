#!/usr/bin/env bash
# dpw@piedmont
# 2023-09-21 23:35:43
#

set -eu

# this will fail if no arguments are sent

container=$1

docker cp ~/.ssh/id_rsa.pub "$container:/home/dpw/.ssh/" && docker cp ~/.ssh/id_rsa "$container:/home/dpw/.ssh/"

exit $?

