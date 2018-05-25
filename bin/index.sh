#!/bin/bash

echo -e 'publication\tname\tdocumentation-url\tdata-url'

grep ' INSPIRE index polygon data</a>' |
	sed -e 's/^.*href="//' -e 's/".*$//' -e 's/^\//https:\/\/www.gov.uk\//' |
	while read url
	do
		cached=$(echo "$url"|sed -e 's/[^A-Za-z]/-/g' -e 's/^/cache\//')
		if [ ! -f "$cached" ] ; then
            wget -q "$url" -O "$cached"
        fi
		line=$(cat "$cached" | grep ' INSPIRE index polygon data</a>')
		data=$(echo "$line" | sed -e 's/^.*href="//' -e 's/">.*$//')
		name=$(echo "$line" | sed -e 's/^.*"> *//' -e 's/ INSPIRE.*$//')
		publication=$(echo "$url"|sed -e 's/^.*\///' -e 's/-inspire-index-polygon-data//' -e 's/--2//')
		echo -e "$publication\t$name\t$url\t$data"
	done
