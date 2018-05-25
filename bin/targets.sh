#!/bin/bash

awk -F'	' '
BEGIN {
    printf "TARGETS="
}
NR==1 {
    for (i=1; i<=NF; i++) {
        col[$i] = i
    }
}
NR>1 {
    printf "\\\n    data/area/%s.geojson", $col["publication"]
}
END {
	printf "\n"
}'
