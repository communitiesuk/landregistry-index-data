#!/bin/bash

id=$(basename $1 .zip)
url=$(egrep "^$id	" index.tsv | cut -d'	' -f4)
set -x
wget -q "$url" -O "$1"
