# Trip origins data (Swisscom)

[Back to index](./index.md)

These csv files aggregate the trip origins, and their file name has the following format: `trips_origins_TYPE_AGGREGATION.csv`

`TYPE` can be:
* `incoming_from`: for trips whose destination is inside Lugano.
* `passing_through`: for trips that go through Lugano and whose origin and destination are outside Lugano.

`AGGREGATION` can be:
* `canton`, see [Cantons of Switzerland](https://en.wikipedia.org/wiki/Cantons_of_Switzerland)
* `district`, see [Districts of Switzerland](https://en.wikipedia.org/wiki/Districts_of_Switzerland)
* `municipality`, see [Municipalities of Switzerland](https://en.wikipedia.org/wiki/Municipalities_of_Switzerland)
* `plz`, i.e., Zip code (see [Postal codes in Switzerland](https://en.wikipedia.org/wiki/Postal_codes_in_Switzerland_and_Liechtenstein))

The columns provided in the files are the following:

* `Date`
* `From Id` and `From Name` for the specific aggregation
* `Count` for the trip count.