## Gis Data

The data in a GIS folder is stored in various formats according to the [shapefile format](https://en.wikipedia.org/wiki/Shapefile):

    Mandatory Files:

    - `.shp`: shape format; the feature geometry itself
    - `.shx`: shape index format; a positional index of the feature geometry to allow seeking forwards and backwards quickly
    - `.dbf`: attribute format; columnar attributes for each shape, in dBase IV format

    Other files:

    - `.prj`:  projection description, using a well-known text representation of coordinate reference systems
    - `.sbn` and `.sbx`: a spatial index of the features
    - `.shp.xml`: geospatial metadata in XML format, such as ISO 19115 or other XML schema
    - `.cpg`: used to specify the code page (only for .dbf) for identifying the character encoding to be used

In addition some data is stored as `.geojson`. [GeoJSON](https://geojson.org) is a format for encoding a variety of geographic data structures.

To view the shapefiles you can use the free and open source software [QGIS](https://qgis.org/en/site/) as described in [these instructions](https://docs.qgis.org/2.8/en/docs/user_manual/working_with_vector/supported_data.html). The GeoJSON files can be opened in a smilar way. By using layers it can be combined with other GIS data such as Google maps.
