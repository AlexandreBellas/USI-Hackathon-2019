# Swisscom Data: Index

The data we obtained by Swisscom for this Hackathon is relative to the **area of interest** approximately corresponding to Lugano and described by the image below.

![Lugano Area](./images/luganoarea.png "Lugano Area")
 
The data we obtained essentially measures the number of trips over time relative to the lugano area (below, the area of interest), including some demographic data of the people traveling.


## General information about the Data Source

The following data sources are used for the analyses: 3G, 4G network data (voice and data).

Who has been be captured: All SIM cards which are connected to the Swisscom network, i.e.:

* Swisscom customers
* Residential customers
* Enterprise customers
* Customers of other operators which are using the Swisscom network
  * M-Budget Mobile
  * Wingo Mobile
* Foreign SIM cards which are roaming on the Swisscom network


## General information about trips

A trip is a movement between an **origin** and **destination** along a specific trajectory.

An origin and a destination are defined as two consecutive *static periods*. A static period is a period of time for which the device is static for more than 20 minutes.

Due to data protection reasons origins and destinations are aggregated with respect to zip code areas (**PLZ**), municipalities, districts and cantons.

Only trips which **start/end inside** or **pass through** the area of interest are considered.

For each trip the beginning and the end time of the trip (i.e. the end time of the first static period and beginning time of the consecutive static period) as well as the entrance time into the area of interest and the leaving time are captured.

Starting and end time of a trip have to occur on the same calendar day in order to be considered.

To ensure anonymity of the values, the graph will not show results **smaller than 20** and will display the corresponding label: **< 20**

## Data

* [Trip count data](./trip_count_data.md)
* [Demographics](./demographics_data.md)
* [Trip origins data](./trip_origins_data.md)
* [Trip destinations data](./trip_destinations_data.md)
* [Route location data](./route_location_data.md)