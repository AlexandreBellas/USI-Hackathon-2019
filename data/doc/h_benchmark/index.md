# Hospitality Data

## Overview

The data from the provider `h_benchmark` for the Hackathon contains information concerning the reservations and stays in the hotels of Lugano.

Two files are provided:

- `Lugano-prenotazioniv2.csv`: a `csv` file containing a single row per reservation.
- `Lugano-prenotazioniv2-data-dict.txt`: a `txt` file containing the data dictionary of the above file, in Italian.


## Column Description

| Header Name | Description | Notes / Examples |
| ----------- | ----------- | ----- |
| `Prenotazione ID` | Unique Identifier for the reservation | `262754` |
| `Arrivo` | Beginning of stay / check in date (format is DD-MON-YY, with Italian Locale) | `18-giu-19` |
| `Partenza` | End of stay / check out date (format is DD-MON-YY, with Italian Locale)| `20-giu-19` |
| `Durata` | Stay Duration (difference between the two above columns) | `2` |
| `Data Creazione` | Creation date of the reservation (format is DD-MON-YY, with Italian Locale) | `14-giu-19` |
| `Data Cancellazione` | Cancellation date of the reservation (format is DD-MON-YY, with Italian Locale), empty in case it is not cancelled | `15-giu-19` |
| `Camere Vendute` | Number of reserved rooms | `2` |
| `Ospiti` | Number of guests | `4` |
| `Ricavo Complessivo` | Overall Revenue (Rooms rate + board fee), expressed in CHFs | `656` |
| `Ricavo Camere` | Rooms Revenue (room rate only), expressed in CHFs | `323` |
| `Tipo Camera` | Room type - every hotel uses a different categorization to represent the room type (eg: standard, deluxe, suite,...) | `BUS` |
| `Stato` | Reservation status | See [Reservation Status Values](#reservation-status-values) for values |
| `Trattamento` | Hotel Board type | See [Hotel Board Type Values](#hotel-board-type-values) for values |
| `Canale` | Channel through which the reservation was received | See [Channel Reservation Values](#channel-reservation-values) for values |
| `Mercato` | Whether the guest had any type of convention rate for the reservation | See [Convention Status Values](#convention-status-values) for values |
| `Nazionalità` | Guest nationality | `Svizzera` |

### Reservation Status Values

One of the following values:

| value | description |
| ----- | ----------- |
| `Cancellata` |  Reservation was cancelled  |
| `Check-in` |  Guest has checked in  |
| `Check-out` |  Guest has checked out  |
| `Inserita` | Guest confirmed the reservation |
| `No show` | Reservation was not cancelled, but guest did not show  |

### Hotel Board Type Values

One of the following values:

| value | description |
| ----- | ----------- |
| `Bed & Breakfast` | Bed & Breakfast Stay  |
| `Mezza Pensione` |  Half Board  |
| `Pensione Completa` | Full Board   |
| `Solo camera` | Only Room, no meals   |


### Channel Reservation Values

One of the following values:

| value | description |
| ----- | ----------- |
| `Diretto` | Direct reservation (e.g: walk-in, fax, email, phone call...)    |
| `Agenzie - Booking` | Reservation performed through Booking.com   |
| `Agenzie - Expedia` | Reservation performed through Expedia.it   |
| `Agenzie - OTA` |  Online reservation that was performed online, but not through Booking nor Expedia, OR it may also be through Booking/Expedia if a single source code for the Online Travel Agencies is managed  |
| `Agenzie - Portale Destinazione` | Reservation got through the destination reservation channel |
| `Sito Web` | Reservation got through the hotel official web site |
| `Altri Canali` | Reservation got through any other channel (e.g: Tour Operator, Offline Travel Agency) |


### Convention Status Values

One of the following values:

| value | description |
| ----- | ----------- |
| `Retail` | Individual customer, reserving without any other business activity  |
| `Gruppi Business` | Group reservations of Business customers (*e.g.,* conferences)   |
| `Negotiated` | Individual customers that benefit from a convention fee granted with their company |
| `Gruppi Leisure` | Group reservations for customers on vacation  |
| `Wholesaler` | Individual customers who reserve through travel agencies / tour operators that have commercial agreements with the hotel and benefit from discounted rates  |
