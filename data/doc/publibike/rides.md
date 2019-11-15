# Rides

[Back to index](./index.md)

There are five csv files to describe rides by:

1. Day (`rides_by_day.csv`): describes all rides on a daily basis;
2. Fare (`rides_by_day.csv`): describes all rides by fare and customer type;
3. Punctuality (`rides-on-time.csv`): describes the rides ended within the time covered by the fare, without paying additional fees.
4. Loan Duration (`trips_after_loan_duration_v2.csv`): describes the duration of all rides.
5. Day of Week (`trips_by_day_of_week.csv`): provides the day of week for all rides.
6. Access Medium (`trips_to_access_medium.csv`): provides the type of access medium used by customers for all rides.

## Columns for `rides_by_day.csv`

- `Fahrt: Name`: (Trip: Name) a unique id representing a ride;
- `Ende`: (End) a datetime representing the end of the ride;
- `Typ`: (Type) the type of bike used.

## Columns for `rides_by_fare.csv`

- `Fahrt: Name`: (Trip: Name) a unique id representing a ride;
- `Kunden Gruppe`: (Customer Group) the type of customer (B2B vs B2C);
- `Tarif`: (Tariff) the type of fare paid/used for the ride.

## Columns for `rides-on-time.csv`

- `Fahrt: Name`: (Trip: Name) a unique id representing a ride;
- `Ende - Stunde`: (End - Hour) the hour at which the ride ended. This field ignores the summer time daylight saving time. Please refer to the column `Ende` in `rides_by_day.csv`;
- `Ende Wochentag`: (End - Weekday) the day of the week in the format `day_number day_name` (e.g., `1 Montag`).

## Columns for `trips_after_loan_duration_v2.csv`

- `Fahrt: Name`: (Trip: Name) a unique id representing a ride;
- `Ausleihdauer`: (Load Duration) the duration of the loan;
- `Kunden Gruppe`: (Customer Group) the type of customer (B2B vs B2C).

## Columns for `trips_by_day_of_week.csv`

- `Fahrt: Name`: (Trip: Name) a unique id representing a ride;
- `Ende Wochentag`: (End - Weekday) the day of the week in the format `day_number day_name` in German (e.g., `1 Montag`).

## Columns for `trips_to_access_medium.csv`

- `Fahrt: Name`: (Trip: Name) a unique id representing a ride;
- `Kunden Gruppe`: (Customer Group) the type of customer (B2B vs B2C);
- `Zugangsmedium Typ`: (Access Medium Type) the type of medium used to unlock bikes (e.g., Phone, Swisspass, RFID).
