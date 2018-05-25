#
#  build geojson files for Land Registy INSPIRE index polygons
#
.SUFFIXES:
.SUFFIXES: .zip .gml .geojson
.PRECIOUS: cache/%.zip data/area/%.geojson
.SECONDARY: cache/%.zip data/area/%.geojson
.PHONY: makefiles

all: makefiles targets

-include targets.mk

targets: $(TARGETS)

makefiles: targets.mk

# download an individual zip file
cache/%.zip:
	@mkdir -p cache
	bin/fetch.sh $@

# extract the GML shapefile
cache/%.gml: cache/%.zip
	unzip -qq -c $? Land_Registry_Cadastral_Parcels.gml | sed -e 's/xsi:schemaLocation="[^"]*"//'> $@

# create geojson with WSG84 coordinates from GML shapefile
data/area/%.geojson: cache/%.geojson
	rm -f $@
	@mkdir -p data/area
	bin/c14n.sh < $< > $@

cache/%.geojson: cache/%.gml
	rm -f $@
	ogr2ogr  -t_srs WGS84 -f "GeoJSON" $@ $<

# makefile targets
targets.mk:	index.tsv bin/targets.sh
	bin/targets.sh < index.tsv > $@

index.tsv:	cache/index.html bin/index.sh
	bin/index.sh < cache/index.html > index.tsv

cache/index.html:
	wget -q https://www.gov.uk/government/collections/download-inspire-index-polygons -O $@

clean::
	rm -f data/*.gml data/*.gfs

clobber::
	rm -f polygons/*
