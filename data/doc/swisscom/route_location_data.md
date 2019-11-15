
# Routes location data (Swisscom)

[Back to index](./index.md)

These csv files aggregate the trip origin and destinations for trips that pass through Lugano: `trips_routes_passing_through_AGGREGATION.csv`

`AGGREGATION` can be:
* `canton`, see [Cantons of Switzerland](https://en.wikipedia.org/wiki/Cantons_of_Switzerland)
* `district`, see [Districts of Switzerland](https://en.wikipedia.org/wiki/Districts_of_Switzerland)
* `municipality`, see [Municipalities of Switzerland](https://en.wikipedia.org/wiki/Municipalities_of_Switzerland)
* `plz`, i.e., Zip code (see [Postal codes in Switzerland](https://en.wikipedia.org/wiki/Postal_codes_in_Switzerland_and_Liechtenstein))

The columns provided in the files are the following:

* `Date`
* `From Id`/`From Name` for the specific aggregation of the origin
* `To Id`/`To Name` for the specific aggregation of the destination
* `Count` for the trip count. 

For each day, there are only the top 10 route combinations for a specific pair of origin/destination .