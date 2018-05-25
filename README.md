[Land Registry INSPIRE index polygons](https://www.gov.uk/inspire-index-polygons-spatial-data) from GOV.UK published as geojson as a part of the [digital-land](https://github.com/communitiesuk/digital-land-data) alpha.

To rebuild the data:

    $ sudo apt-get install gdal-bin

or 

    $ brew install gdal

then

    $ make makefiles
    $ make

# Licence
The software in this project is open source and covered by [LICENSE](LICENSE) file.

Land Registry data has been copied into this repository is under the terms of the [LICENCE](LICENSE.md).

Otherwise all content is [© Crown copyright](http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/copyright-and-re-use/crown-copyright/)
and available under the terms of the [Open Government 3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) licence.
