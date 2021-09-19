---

## Table of Contents:

---
- [Segment 1](#Segment-1)
- [Segment 2](#Segment 2)
- [Segment 3](#Segment 3)
- [Segment 4](#Segment 4)

---


## Segment 1
### Presentation:
	• Selected topic: 
    The targeted goal of this analysis is to predict departure delays based on various features. This will provide insights on how likely your next flight would be delayed based on if certain conditions are being met, such as the weather or the time of your travel to name a few.

	• Reason why they selected their topic
    Just in the last few months, natural disasters never seem to leave the front pages: historic fires throughout the western US, 500 year floads in Germany and the northeast US, back-to-back category 4 hurricanes in the southern states.  It is no longer a question of avoiding the effects of climate change, rather learning  how to adapt to it.  With this in mind, we wish to study the impact of weather on flight delays when compared to other potential factors (airline congestion, aircraft age/mechanical issues, etc.) to better understand what potential economic and logistic downstream effects to anticipate as weather conditions worsen.  While climate change is not the same as weather, a finding of strong correlation between weather and flight delays may establish a metric that could be useful to future researchers.

	• Description of their source data
    This is a classification dataset with detailed airline, weather, airport and employment information.  24 raw data files are included for dataset customization, including adding cancellation, specific delay reasons, and/or arrival delays in order to create a multiclass problem. Note: Raw files for weather include only the top 90% of airports for passenger traffic, as all weather data was downloaded manually.

    Monthly data is included for 2019 and the first three months of 2020, with 2019 months comprising the train/test sets and 2020 months offering "new unseen" data. Small train/test is available to develop your model on ~500k rows before throwing computing power at the large, multi-million row train/test set.

    train-test-small: Jan 2019 ~500k rows
    train-test: Entire 2019 ~6.5million rows
    new-data: Jan - Mar 2020 (Consider dropping Mar 2020, as Covid-19 likely created irregularity with flight statistics) ~1.4million rows
    new-data-small: Jan 2020 ~500k rows


	• Questions they hope to answer with the data
    Use data to predict future flight delays.

### GitHub
	• Description of communication protocols
    Each team member had created a GitHub branch to push his or her work and the repo owner will merge them to the main branch at the end.  We are making use of Slack to communicate as well as zoom.
	• Descriptions / explanations required in project deliverables should be in readme
    Readme.md has been created with project details and will grow with the project until final project presentation.

### Project Workflow
    • Raw data files stored in Google Drive folder
    • Postgres db will connect data files according to data model using SQL and output flat csv to be used to create Pandas dataframes to train machine learning modules 
    • Google Collab Notebooks will store machine learning code


### Machine Learning Model:
	• Takes in data in from provisional database
	• Outputs label(s) for input data

### Database
	## Database
* What db technology will be used?
* AWS will be used to store and host the data for this project. A number of raw files will be added to the database in AWS and will be transformed using SQL language into several different tables to use for testing with the machine learning model.

#### Features to be used will include:
* Month
* Age of Departing Aircraft
* Departure Block(time of day)
* Carrier Name
* Max Temp
* Wind Speed
* Snowfall
* Precipitation
* Departing Airport
* Airport Flights
<br/>
<br/>
<br/>

#### ERD (entity relationship diagram)
* A comprehensive ERD diagram has been posted and will be used as the layout for our database setup.
![QuickDBD-Free Diagram (1)](https://user-images.githubusercontent.com/82389466/132112291-7938e9e0-7663-4fbd-a594-81c683f0b328.png)
