#!/bin/bash

cd $(dirname $(readlink -f $0)) # jump to the script directory

git submodule update --init --recursive || exit 1

for f in $(echo */); do
  $f/install.sh
done
