# **Airline Delay Prediction**

---

## **Presentation Overview:**
<ins>Topic:</ins>

The targeted goal of this analysis is to predict departure delays based on various features. This will provide insights on how likely your next flight would be delayed based on if certain conditions are being met, such as the weather or the time of your travel to name a few.

<ins>Rationale:</ins>

Just in the last few months, natural disasters never seem to leave the front pages: historic fires throughout the western US, 500 year floads in Germany and the northeast US, back-to-back category 4 hurricanes in the southern states.  It is no longer a question of avoiding the effects of climate change, rather learning  how to adapt to it.  With this in mind, we wish to study the impact of weather on flight delays when compared to other potential factors (airline congestion, aircraft age/mechanical issues, etc.) to better understand what potential economic and logistic downstream effects to anticipate as weather conditions worsen.  While climate change is not the same as weather, a finding of strong correlation between weather and flight delays may establish a metric that could be useful to future researchers.

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
