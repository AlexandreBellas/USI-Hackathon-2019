# Data Description - Electric Car Charging Stations

## Overview

The data is stored in two CSV files:
- `colonnine.csv`: charging stations
- `dati_ricariche_auto_elettriche_v1.csv`: charging station usage data

## Charging Stations

`colonnine.csv` is a CSV containing information about 62 charging stations.

### CSV Columns Description
- `ChargingStationId`: ID of the charging station
- `ChargingStationName`: name of the charging station
- `Description`: description (in Italian) of the charging station
- `Paese`: town/city
- `Stazione`: `ChargingSationName` + `Paese`
- `X`: GIS X coordinate
- `Y`: GIS Y coordinate
- `osservazioni GIS`: remarks regarding GIS

## Charging Station Usage

`dati_ricariche_auto_elettriche_v1.csv` is a CSV with 5,728 records of charging station usage for the year 2017. Links to Charging Stations using the `ChargingStationId` column.

### CSV Columns Description
- `ChargeLogId`: record id
- `UserId`: user id (`Sconosciuto` means unknown)
- `anno`: year
- `BeginDate`: charging start date
- `BeginHour`: charging start hour
- `EndDate`: charging end date
- `EndHour`: charging end hour
- `Duration`: charging duration
- `Durata ore`: charging duration in hours
- `PowerConsumption`: power consumption in Wh
- `Consumo kWh`: power consumption in kWh
- `Durata min`: charging duration in minutes
- `Debit`: ?
- `Net Payout`: ?
- `Parking fee`: parking charge
- `Penalty`: penalty
- `Tariffa`: charge tariff
- `quota elettricità`: charging quota for electricity
- `Currency`: currency
- `TransactionType`: type of the transaction (`Anderer` means other)
- `ChargingStationId`: ID of charging station. Reference to `colonnine.csv`.
- `ChargingStationName`: Name of charging station.
- `Paese`: town/city
- `Stazione`: `ChargingSationName` + `Paese`
- `Plug`: charging plug
- `PlugType`: charging plug type
- `UserOperatorName`: name of operator
- `UserOperatorId`: operator id

### Examples of what you can do:

- analyze most busy charging stations
- show charging stations on a map using GIS info