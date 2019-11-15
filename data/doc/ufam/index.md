# UFAM Documentation

The data we obtained from [oasi](http://www.oasi.ch) for this Hackaton is relative to the area of Lugano, collected by [Lugano Detection Station](http://www.oasi.ti.ch/web/dati/stazioni-di-rilevamento.html?domain=air&code=Nabel_LUG), and owned by [UFAM] (https://www.bafu.admin.ch/bafu/it/home.html)(Ufficio Federale dell'ambiente).

## Air Pollution Data
The `lugano_air_pollution.csv` file contains one year of data concerning the state of air for the following metrics:

* `PM10`: Fine Particles, measured in µg/m³
* `O3`: Ozone, measured in µg/m³
* `NO`: Nitrogen Monoxide, measured in µg/m³
* `NO2`: Nitrogen Dioxide, measured in µg/m³
* `NOx`: Nitrogen Oxides, measured in parts per billion

### Columns for `lugano_air_pollution.csv`

* `data`: timestamp of the measurement, formatted `DD.MM.YYYY HH24:MI:SS`
* `NOx - Ossidi di azoto - Ppb`: Nitrogen Oxides, float
* `NO - Monossido di azoto - µg/m³`: Nitrogen Monoxide, float
* `NO2 - Diossido di azoto - µg/m³`: Nitrogen Dioxide, float
* `O3 - Ozono - µg/m³`: Ozone, float
* `PM10 - Polveri fini - µg/m³`: Fine Particles, float

The csv file covers a period from the 13.10.2018 to the 13.10.2019, but it can be extended, if needed, by performing calls to the following URL:

`http://www.oasi.ti.ch/web/rest/measure/csv?domain=air&resolution=h&parameter=<parameter_name>&from=<starting_date>&to=<ending_date>&location=Nabel_LUG`

Where `<parameter_name>` is one of the above list acronym (e.g: `NO2`), and the `<starting_date>` and `<ending_date>` parameters are in `YYYY-MM-DD` format