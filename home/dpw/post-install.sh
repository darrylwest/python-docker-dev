#!/usr/bin/env bash
# dpw@piedmont
# 2023-09-21 21:21:52
#

set -eu

curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y

cargo install lsd ruff

exit $?

