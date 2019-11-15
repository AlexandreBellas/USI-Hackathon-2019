# Data Description - TPL

## Overview

Data obtained from TPL for the Hackathon is organized in two different folders depending on the information to be represented.

* `line_events` contains information related to trips of all the TPL lines
* `gis` contains the geographical information of all lines and stops.

## Line Events folder

### Overview

Describes the public transportation run by TPL from 01-11-2018 to 31-10-2019 (one file per line and month).

| File        |      Line       |   Records |
| ----------- | :-------------: | --------: |
| `401_*.csv` |        1        |   575,900 |
| `402_*.csv` |        2        |   902,979 |
| `403_*.csv` |        3        | 1,378,286 |
| `404_*.csv` |        4        |   927,013 |
| `405_*.csv` |        5        | 1,271,702 |
| `406_*.csv` |        6        |   328,600 |
| `407_*.csv` |        7        |   865,758 |
| `408_*.csv` |        8        |    58,903 |
| `409_*.csv` |        9        |    23,339 |
| `410_*.csv` |       10        |   346,681 |
| `412_*.csv` |       12        |   508,998 |
| `413_*.csv` |        S        |    85,371 |
| `416_*.csv` |       16        |   207,885 |
| `417_*.csv` | P+R Fornaci (F) |    63,836 |


### Columns description

The data is stored as CSV where each record contains the following:

- `VEICOLO`: id of the vehicle/bus
- `TURNO`: id of the shift
- `LINEA`: the bus line number
- `CORSA`: the route
- `POSIZIONE`: position number
- `INDIRIZZO`: address/name of the position
- `DATA`: date
- `TRANS.REALE`: real time
- `TRANS.PROGRAMMATO`: expected/planned time
- `SCOST.`: time difference (`real - expected`) in minutes
- `KM`: kilometers of vehicle
- `TRATTA REALE[KM]`: travelled distance (in km)
- `TRATTA PROGR.[KM]`: expected/planned distance (in km)
- `EVENTO`: optional notes about the event
- `DURATA`: duration of event in minutes

### Examples of what you can do:

- analyze punctuality between lines
- analyze time periods with more delays

### Link with GIS

In the `POSIZIONE` you find a number where the 4 leftmost digits corresponds to the field `fermata` (bust stop) in the `tpl_stops/tpl_stops.shp`.


## GIS folder 

### Overview

The folder itself is split into two subfolders:

* `lines`, which contains the anagraphic of all the lines.
* `stops`, which contains the anagraphic of all the stops.


### GIS folders contents

See [ GIS format](./shared/gis_contents.md)

