# Stations

[Back to index](./index.md)

There are three csv files for describing rides by:

Data concerning Publibike' stations is described across three csv files:

1. Stations (`stations.csv`): describes all the Publibike' stations in the network of Lugano;
2. Departing Station (`station_number_of_loans.csv`): describes the departing station of rides;
3. Arrival Station (`station_number_of_returns.csv`): describes the arrival station of rides;

## Columns for `stations.csv`

- `id`: a unique id of a station;
- `name`: a string representing the name of the station;
- `address`: a string representing the actual address of the station;
- `latitude`: a float representing the latitude of the geographical position of the station;
- `longitude`: a float representing longitude of the geographical position of the station;
- `networkId`: the id of the Publibike network to which a station belongs to;
- `networName`: the name of the Publibike network to which a station belongs to.

## Columns for `station_number_of_loans.csv`

- `Fahrt: Name`: (Trip: Name) a unique id representing a ride;
- `Station - VON`: (Station - From) the name of the station from which a ride started.

## Columns for `station_number_of_returns.csv`

- `Fahrt: Name`: (Trip: Name) a unique id representing a ride;
- `Station - BIS`: (Station - To) the name of the station at which a ride ended.
