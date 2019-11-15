# Data Description - Parking

[Back to index](./index.md)

## Overview

`posteggi.json` contains a JSON with 27,647 elements in the time period from 2019-06-17 to 2019-10-11 on an hourly basis. It contains 10 different parking spaces.

Each record describes the parking lot availability at a given parking location and time:

- `data`: date
- `DataNome`: date with name of month
- `Ora`: time
- `Parcheggio`: parking name
- `Capacita`: capacity
- `Disponibilita`: availability
- `OccupazionePerc`: occupancy in percentage

### Examples of what you can do:
- analyze busy time periods

## Entry example in `posteggi.json`

```json
{
  "data": "2019-06-17",
  "DataNome": "17-Giu-2019",
  "Ora": "11:00:00",
  "Parcheggio": "Centro Est - Piazza Castello",
  "Capacita": 246,
  "Disponibilita": 62,
  "OccupazionePerc": 74.8
}
```
