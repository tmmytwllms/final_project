# **Airline Delay Prediction**

---

## **Presentation Overview:**
<ins>Topic:</ins>

The targeted goal of this analysis is to identify the features most associated with on-time departures. This will provide insights on how likely your next flight would be delayed based on if certain conditions are being met, such as the weather or the time of your travel to name a few.

<ins>Rationale:</ins>

According to Airlines for America (A4A)in 2019, "the average cost of aircraft block (taxi plus airborne) time for U.S. passenger airlines was $74.24 per minute...Delayed aircraft are estimated to have cost the airlines several billion dollars in additional expense. Delays also drive the need for extra gates and ground personnel and impose costs on airline customers (including shippers) in the form of lost productivity, wages and goodwill." <sup id="a1">[1](#f1)</sup>  In addition to the considerable losses associated with delays, there are psychological costs as well. A 2007, University of Michigan’s American Customer Satisfaction Index score for U.S. airlines registered only 63% satisfaction.<sup id="a2">[2](#f2)</sup> Since the return to high volume air travel after months of pandemic-induced closed borders and the grounding of most flights, we have seen a disturbing rise in "passenger unruliness".  According to a recent CNN report, the FAA has issued more than $1 million in fines to such passengers already in 2021. [^3].  while most of the media attention has been focused on the refusal to wear masks during flights, data from the IATA from 2012-2015 demonstrate the rise of passenger disruption well before the onset of the pandemic.[^4] Many reasons contribute to this rise: fuller cabins, shrinking leg space, increased security checks, additional fees for cary-on bags, etc.  Such issues are endemic to the industry and effect all carriers to varying degrees.  However, flight delays, as already mentioned, add to an already challenging travel sector.

---

## Table of Contents:

---
- [Project Files](#Project-Files)
- [Data Sources](#Data-Sources)
- [Steps in Analysis](#Steps-in-Analysis)
- [Data Gathering and Cleaning](#Data-Gathering-and-Cleaning)
- [Visualization](#Visualization)

---

## Project-Files

This is a classification dataset with detailed airline, weather, airport and employment information.  24 raw data files are included for dataset customization, including adding cancellation, specific delay reasons, and/or arrival delays in order to create a multiclass problem. Note: Raw files for weather include only the top 90% of airports for passenger traffic, as all weather data was downloaded manually.

Monthly data is included for 2019 and the first three months of 2020, with 2019 months comprising the train/test sets and 2020 months offering "new unseen" data. Small train/test is available to develop your model on ~500k rows before throwing computing power at the large, multi-million row train/test set.

train-test-small: Jan 2019 ~500k rows
train-test: Entire 2019 ~6.5million rows
new-data: Jan - Mar 2020 (Consider dropping Mar 2020, as Covid-19 likely created irregularity with flight statistics) ~1.4million rows
new-data-small: Jan 2020 ~500k rows.



<ins>Target:</ins>

- Delay (over 15 minutes)

<ins>Features:</ins>
- Month
- Age of Departing Aircraft
- Departure Block (time of day)
- Carrier Name
- Max Temp
- Wind Speed
- Snowfall
- Precipitation
- Departing Airport
- Airport Flights



## Data-Sources
Bureau of Transportation statistics: https://www.transtats.bts.gov/databases.asp?Z1qr_VQ=E&Z1qr_Qr5p=N8vn6v10&f7owrp6_VQF=D
National Centers for Environmental Information (NOAA): https://www.ncdc.noaa.gov/cdo-web/datasets
Banner image: Photo by Kevin Woblick on Unsplash




## Steps-in-Analysis
## Data-Gathering-and-Cleaning
## Visualization


## Footnotes
<b id="f1">1</b>: See https://www.airlines.org/dataset/u-s-passenger-carrier-delay-costs/. [↩]

<b id="f2">2</b>: See https://economics.ecu.edu/wp-content/pv-uploads/sites/165/2019/07/ecu0707.pdf. [↩]

[^3]: See https://www.cnn.com/travel/article/flight-attendants-unruly-passengers-covid/index.html.

[^4]: Ibid.
