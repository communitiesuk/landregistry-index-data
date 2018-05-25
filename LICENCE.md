[Source](https://www.gov.uk/guidance/inspire-index-polygons-spatial-data "Permalink to INSPIRE Index Polygons spatial data")

# INSPIRE Index Polygons spatial data

## Download INSPIRE Index Polygons

INSPIRE Index Polygons are provided in predefined pots of data corresponding to local authority areas in England and Wales. Polygons that straddle local authority boundaries are included in the predefined pot for each local authority they fall within.

You will need a Geographical Information System (GIS) to view the downloaded INSPIRE Index Polygons.

You can view the INSPIRE metadata before downloading using a Geographical Information System (GIS). GIS will also enable you to store or edit downloaded data, which you can compare or integrate with other available datasets.

## About INSPIRE polygons

INSPIRE Index Polygons is an open source dataset, developed to comply with the [INSPIRE Directive][1]. It contains the locations of freehold registered property in England and Wales, a sub-set of our Index Polygons for all freehold land and property.

Polygons are shapes that show the position and indicative extent of a registered property. Each INSPIRE Index Polygon has a unique identification number called the Land Registry-INSPIRE ID that relates to a registered title.

Use a Land Registry-INSPIRE ID with our [Find a Property service][2] to get the title registration and plan for each polygon.

The extent of the land contained in any registered title cannot be established from the INSPIRE Index Polygons. This can only be identified from the individual title plan.

Each registered title will have a single title number, which may contain several separate polygons. Each individual polygon will have a separate Land Registry-INSPIRE ID. If a property or piece of land does not have a Land Registry-INSPIRE ID, it is possible that it is not registered. Alternatively, it could be a leasehold registration or one of the other tenures that are not present in our INSPIRE Index Polygons.

[Search the index map][3] to find out if a piece of land is registered.

[Business e-services][4] customers can use [MapSearch][5] to view our full Index Polygon dataset free of charge.

## Technical guidance

### GML format

GML is an open data format that is widely used across Europe and complies with the [EU INSPIRE Directive][1]. By supplying data in GML format, HM Land Registry support the use of open standards and supply a standard data structure to users of all GIS/CAD systems.

### Use GML data

The GML data format can be converted to other geographic information system (GIS) formats. Depending on your system you may need to convert GML to suit the data format of your GIS. Please contact your GIS provider for details of how to conduct conversions within your system.

Quantum geographic information system (QGIS) is a free open source system that can be used to view GML data and/or convert it to a variety of other popular data formats.

#### To open GML

Click the layer menu and add a vector layer, browse to the location of your GML file and select the GML file type. Add the layer to your project. To use GML data in different tools you may have to convert the data into a format used by that tool and also ensure the data is in an appropriate projection.

#### To convert the GML layer to a different data format

You need to add the GML layer to your project. Select the layer in the layer browser and right click on the layer. Click on save as and choose from the available formats such as ESRI shapefile, Mapinfo Mif or Tab, AutoCad DXF, GeoJson or KML. For example if you wanted to use GML data in Google Maps you would have to convert the GML file into keyhole markup language (KML) format.

HM Land Registry data is captured against the British National Grid. This means that each of the many points that make up each polygon are described by X and Y values that reference a point on the British National Grid. You can use HM Land Registry's INSPIRE Index Polygons in popular mapping tools such as Google or Bing Maps. The data will have to be re-projected from British National Grid into projections used by the Google or Bing tools. QGIS can re-project data from British National Grid (EPSG:27700) to a wide variety of other projections, these include the spheroid projections used by Google and Bing.

#### After adding a vector data layer to QGIS

Right click on the layer in the layer browser and click save as. This will enable you to name your new layer and project the layer into a new coordinate reference system (CRS), such as WGS 84 Pseudo Mercator (EPSG:3857) used by Google and Bing maps. Please note that calculations used to convert data from one projection to another may introduce errors. It is possible that the calculations used to convert data from British National Grid to WGS84 may shift the position of some features in the data by up to 15 metres.

For detailed guidance on using QGIS please refer to the QGIS documentation on the QGIS project website.

## Conditions of use

Your use of the INSPIRE Index Polygons service is governed by conditions.

The INSPIRE Index Polygons and attributes provided in this service are available for use and reuse under the [Open Government Licence (OGL)][6]. This licence enables public bodies to make their data available free of charge for reuse.

Use under the OGL is free. If you fail to comply with any of the conditions of the OGL then the rights granted to you under the licence will end automatically.

Under the OGL, when reusing the data you must acknowledge the source of the data and include the following attribution statement:

This information is subject to Crown copyright and is reproduced with the permission of HM Land Registry.

If you are reusing the polygons (including the associated geometry, namely x, y co-ordinates), you must also display the following Ordnance Survey copyright/database right notice:

© Crown copyright and database rights [year of supply or date of publication] Ordnance Survey 100026316.

You must provide a link to these conditions, where possible.

Under the OGL, HM Land Registry permits you to use the data for commercial or non-commercial purposes. However, as the licence says, OGL does not cover the use of third party rights which we are not authorised to license. HM Land Registry uses Ordnance Survey data in the preparation of the polygons and you will need to comply with Ordnance Survey licensing terms for use of the polygons (including the associated geometry, namely x,y co-ordinates).

Read the [Ordnance Survey licensing terms][7].

## Further information

Read more about [the rationale behind INSPIRE][8].

Find out about HM Land Registry's other geographical information services: [Illustrative Plans][9] and [Electronic Extent Data (polygons)][10].

If you are having technical difficulties accessing the data, [contact our customer support][11].

[1]: http://eur-lex.europa.eu/JOHtml.do?uri=OJ:L:2007:108:SOM:EN:HTML
[2]: https://eservices.landregistry.gov.uk/wps/portal/Property_Search
[3]: https://www.gov.uk/get-information-about-property-and-land/search-the-index-map
[4]: https://www.gov.uk/government/collections/business-e-services
[5]: https://www.gov.uk/mapsearch
[6]: http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
[7]: https://www.ordnancesurvey.co.uk/about/governance/policies/inspire-index-polygons-licensing-terms.html?utm_medium=GOV.UK&utm_source=website&utm_campaign=INSPIRE-polygons-OS-terms&utm_term=10_01_17
[8]: http://data.gov.uk/location/inspire
[9]: https://www.gov.uk/illustrative-plans
[10]: https://www.gov.uk/electronic-extent-data-polygons
[11]: http://landregistry.custhelp.com/app/contactus_general/

  [*CRS]: Coordinate Reference System
  [*GIS]: Geographical Information System
  [*INSPIRE]: Infrastructure for Spatial Information in the European Community
  [*QGIS]: Quantum geographic information system
  [*[INSPIRE]: Infrastructure for Spatial Information in the European Community
  [*OGL]: Open Government Licence
