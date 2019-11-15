# Demographics (Swisscom)

[Back to index](./index.md)

There are three csv files for trip demographics, for age (`demographics_age.csv`), gender (`demographics_gender.csv`), and nationality `demographics_nationality.csv`. 

Gender and age are based on statistical data of what Swisscom identifies as the "home" location of the sim card. Nationality is extracted from the network and is based on the subscriber number nationality (e.g. +33 1 23 45 67 89 will be identified as a French subscriber).

Data is aggregated by day.

## Columns for `demographics_age.csv`

* `Date`
* `< 20 (%)`: percentage of trips where traveler is below 20 y.o.;
* `20-40 (%)`: percentage of trips where traveler is between 20 and 40 y.o.;
* `40-60 (%)`: percentage of trips where traveler is between 40 and 60 y.o.;
* `60+ (%)`: percentage of trips where traveler is over 60 y.o..

## Columns for `demographics_gender.csv`

* `Date`
* `Male (%)`: percentage of trips where traveler is assumed male;
* `Female (%)`: percentage of trips where traveler is assumed female.

## Columns for `demographics_nationality.csv`

* `Date`
* `Country`: the nationality of the number associated to the trip;
* `Percentage`: the percentage of numbers with that nationality.