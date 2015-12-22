#!/usr/bin/env sh
set -e

git submodule update --init --recursive
cd External/libuv
sh autogen.sh
./configure
make
rm -f .libs/*.la* .libs/dylib
