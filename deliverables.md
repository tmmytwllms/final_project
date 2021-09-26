---

## Table of Contents:

---
- [Segment 1](#Segment-1)
- [Segment 2](#Segment-2)
- [Segment 3](#Segment-3)
- [Segment 4](#Segment-4)

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


## Segment 2

---

### Presentation
__Content__.

The Readme as well as the "Deliverable 1" section of the current document includes the following:
- Selected topic 
- Reason why they selected their topic 
- Description of their source of data 
- Questions they hope to answer with the data 
- Description of the data exploration phase of the project 
- Description of the analysis phase of the project

Slides Presentations are drafted in Google Slides (see link below)

### GitHub
The main branch includes: 
- All code necessary to perform exploratory analysis 
- Some code necessary to complete the machine learning portion of the project 

README.md README.md includes: 
- Description of the communication protocols 
- Outline of the project (this may include images, but should be easy to follow and digest)

_As per our in-class instruction, Git Hub commits are commensurate with our communication needs.  In addition to our Git Hub commits, we have worked directly in the Main branch on occassion as well as through Slack and Zoom as needed._ 


## Machine Learning Models 

### Random Forest Model 

#### 1. Explanation of model choice, including limitations and benefits:

- Goal: The targeted goal of this analysis is to create a machine learning algorithm that classifies whether a flight will be delayed or not, and then ranks the importance of several features by how greatly they impact the prediction model.
- Explanation: Random Forest Machine learning models sample a data set and build smaller and simpler decision trees, with each small tree being built from a random selection of the features specified. A combination of all these small trees, or weak learners, is combined to create a strong learner which has more robust decision making.
- Benefits: Random Forest models are good for data sets which may be prone to overfitting. This type of model can handle larger data sets without adversely impacting processing time and mitigates from inaccuracies due to outliers. 
- Limitations: The model may become too large and thus too slow for real-time uses such as loan predictions. It can also be un-intuitive as to how features are impacting the predictions of the model.  


#### 2. Description of preliminary feature engineering and preliminary feature selection, including their decision-making process:

Initially, the decision was made to only include the following 1 target and 10 features:

```   
Target:

Delay (over 15 minutes)

Features:

Month
Age of Departing Aircraft
Departure Block (time of day)
Carrier Name
Max Temp
Wind Speed
Snowfall
Precipitation
Departing Airport
Airport Flights

```
The previous 10 factors were chosen arbitrarily from the complete feature set as the group reached a consensus on what would most likely affect flight timeliness. During machine learning model testing this approach to features changed. The machine learning models were initially fed all features available in our data, a feature analysis was then conducted in order to rank feature importance and correlation. 

``` 
# Calculate feature importance in the Random Forest model.
importances = rf_model.feature_importances_
importances

# Sort the features by their importance.
sorted(zip(rf_model.feature_importances_, X.columns), reverse=True)

# Correlation Matrix & Extra Feature Selection
corr_matrix = encoded_df.corr()

corr_matrix.style.background_gradient(cmap='coolwarm')

target = 'DEP_DEL15'
threshold = 0.015
correlation_scores = corr_matrix[(corr_matrix[target] > threshold) | (corr_matrix[target] < -threshold)][target]

correlation_scores.sort_values(ascending=False)

``` 
![image](https://user-images.githubusercontent.com/67031885/133938753-cc783573-30a7-496f-b01c-8ee1c383e6a1.png)

![image](https://user-images.githubusercontent.com/67031885/133938769-06f699fe-8428-4d9b-9bd3-781f2d637f3d.png)

Future Plans: During our stage 3 refinement of the machine learning model we will utilize the information obtained in order to cull less impactful features and attempt to address overfitting.

#### 3. Description of preliminary data preprocessing

- Our machine learning code is being hosted in Google Collab and our database is being hosted in AWS.

- We connected to the database by installing a local version of Postgress in Google Collab and executed SQL commands using Postgress to retrieve the table data.

![image](https://user-images.githubusercontent.com/67031885/133938432-636577f4-0122-4c28-ac60-51e8ece8bd92.png)


- The data was then encoded and scaled using a standard scaler. 

![image](https://user-images.githubusercontent.com/67031885/133938576-51fb0d80-2c69-489b-aa79-1c6518841559.png)

![image](https://user-images.githubusercontent.com/67031885/133938593-b2a8761e-48ef-437f-9e7f-d55e6985500e.png)

#### 4.	Description of how data was split into training and testing sets

- For the Random Forest Model the following code was utilized to split into training and testing sets. 

``` 

# Define the features set.
X = encoded_df.copy()
X = X.drop("DEP_DEL15", axis=1)
X.head()

# Define the target set.
y = encoded_df["DEP_DEL15"].ravel()
y[:5]

# Splitting into Train and Test sets.
X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=78)

``` 

### Logistic Regression Model 

#### 1. Explanation of model choice, including limitations and benefits:
- Goal: The targeted goal of this analysis is to create a machine learning algorithm that classifies whether a flight will be delayed or not, and then ranks the importance of several features by how greatly they impact the prediction model.
- Explanation: Logistic regression predicts binary outcomes, meaning that there are only two possible outcomes. In other words, a logistic regression model analyzes the available data, and when presented with a new sample, mathematically determines its probability of belonging to a class.
- Benefits: Logistic Regression is one of the simplest machine learning algorithms and is easy to implement yet provides great training efficiency in some cases. Also due to these reasons, training a model with this algorithm doesn't require high computation power.
- Limitations: Logistic Regression is a statistical analysis model that attempts to predict precise probabilistic outcomes based on independent features. On high dimensional datasets, this may lead to the model being over-fit on the training set, which means overstating the accuracy of predictions on the training set and thus the model may not be able to predict accurate results on the test set.

#### 2. Description of preliminary feature engineering and preliminary feature selection, including their decision-making process:

Initially, the decision was made to only include the following 1 target and 10 features:

```   
Target:

Delay (over 15 minutes)

Features:

Month
Age of Departing Aircraft
Departure Block (time of day)
Carrier Name
Max Temp
Wind Speed
Snowfall
Precipitation
Departing Airport
Airport Flights

```
The previous 10 factors were chosen arbitrarily from the complete feature set as the group reached a consensus on what would most likely affect flight timeliness. During machine learning model testing this approach to features changed. The machine learning models were initially fed all features available in our data, a feature analysis was then conducted in order to rank feature importance and correlation. 

![random_forest_feature_rank](https://github.com/tmmytwllms/final_project/blob/main/Images/random_forest_feature_rank.png)

![random_forest_acc_scores](https://github.com/tmmytwllms/final_project/blob/main/Images/random_forest_acc_scores.png)

After running the random forest feature rank, editting the DataFrame to include the top 8 features, and rerunning the data on the trained model, the classification report still shows an overfitting issue. 

**Correlation Matrix**

![correlation_matrix](https://github.com/tmmytwllms/final_project/blob/main/Images/correlation_matrix.png)

Future Plans: During our stage 3 refinement of the machine learning model we will utilize the information obtained in order to cull less impactful features and attempt to address overfitting and attempt to perform a **cross validation** test method on the data.

#### 3. Description of preliminary data preprocessing
Same method and steps as other models.

#### 4.	Description of how data was split into training and testing sets
Same method and steps as other models.

### SUPPORT VECTOR MACHINE (SVM)

#### 1. Explanation of model choice, including limitations and benefits:

- Goal: The targeted goal of this analysis is to create a machine learning algorithm that classifies whether a flight will be delayed or not, and then ranks the importance of several features by how greatly they impact the prediction model.
- Explanation: A Support Vector Machine model is similar to a logistic regression model in that is also a binary classifier, it splits the sample in to two categories; in our data set the two categories being Delayed or Not Delayed. 
- Benefits: While SVM seeks to split our dataset into two categories, it does not do so as rigorously as a linear regression model. SMV allows for "soft" margins and has logic implemented which accounts for outliers and may make exceptions for them. This means some data points past the "cut off" line/point may still be sorted into the opposite classification.
- Limitations: The training/fitting time for large data sets is a large barrier, even with scaled data the processing time for large data sets can be lengthy and resource intensive.  

#### 2. Description of preliminary feature engineering and preliminary feature selection, including their decision-making process:

Initially, the decision was made to only include the following 1 target and 10 features:

```   
Target:

Delay (over 15 minutes)

Features:

Month
Age of Departing Aircraft
Departure Block (time of day)
Carrier Name
Max Temp
Wind Speed
Snowfall
Precipitation
Departing Airport
Airport Flights

```
The previous 10 factors were chosen arbitrarily from the complete feature set as the group reached a consensus on what would most likely affect flight timeliness. During machine learning model testing this approach to features changed. The machine learning models were initially fed all features available in our data, a feature analysis was then conducted in order to rank feature importance and correlation. 

``` 
# Sort the features by their importance.
sorted(zip(rf_model.feature_importances_, X.columns), reverse=True)

# Correlation Matrix & Extra Feature Selection
corr_matrix = encoded_df.corr()

corr_matrix.style.background_gradient(cmap='coolwarm')

target = 'DEP_DEL15'
threshold = 0.015
correlation_scores = corr_matrix[(corr_matrix[target] > threshold) | (corr_matrix[target] < -threshold)][target]

correlation_scores.sort_values(ascending=False)

``` 
![image](https://user-images.githubusercontent.com/67031885/133938753-cc783573-30a7-496f-b01c-8ee1c383e6a1.png)

![image](https://user-images.githubusercontent.com/67031885/133938769-06f699fe-8428-4d9b-9bd3-781f2d637f3d.png)


#### 3. Description of preliminary data preprocessing

- Our machine learning code is being hosted in Google Collab and our database is being hosted in AWS.

- We connected to a hosted AWS database using python code in our Collab notebooks and executed SQL commands using a local Postgress to retrieve the table data.

![image](https://user-images.githubusercontent.com/67031885/133938432-636577f4-0122-4c28-ac60-51e8ece8bd92.png)


- The data was then encoded and scaled using a standard scaler. 

![image](https://user-images.githubusercontent.com/67031885/133938576-51fb0d80-2c69-489b-aa79-1c6518841559.png)

![image](https://user-images.githubusercontent.com/67031885/133938593-b2a8761e-48ef-437f-9e7f-d55e6985500e.png)

#### 4.	Description of how data was split into training and testing sets

- For the SVM model the following code was utilized to split into training and testing sets. 

``` 

# Segmenting the features from the target
y = encoded_df["DEP_DEL15"]
X = encoded_df.drop(columns='DEP_DEL15', axis=1).values

# Utilizing train_test_split function to create training and testing subsets
X_train, X_test, y_train, y_test = train_test_split(X, 
                                                    y, 
                                                    random_state=1, 
                                                    stratify=y)
X_train.shape

```

### Important Note: 
- Unfortunately during testing this model had to be dropped and will not be utilizied further in this project. The model was unable to "fit" the dataset, and attempts to scale the data, both in Google Collabs and locally proved uncessful. 


### Database
Team members present a fully integrated database.
- Raw data tables and aggregated data tables have been imported into the database using pgAdmin from the Kaggle dataset.
- Data is stored using pgAdmin and hosted via AWS. Several notebooks and scripts have also connected to the database in order to perform data cleansing, data transformation, and read/write operations. 
- The database contains multiple tables, including a training and testing set for use with the machine learning models. We are using PostgreSQL.
- The data that is being used for this project is divided in such a way that no additional tables needed to be built via a series of joins.
- We connect to our database using a direct connection using a Google Colab notebook.
- ERD has been provided for the raw data tables.

### Data Munging
- The original dataset representing over 6 million records proved too large to easily submit to machine learning models; therefore, we deployed an R script to sample the data size down to 1/10 of its original size.
- Further data exploration revealed errors in the orginal dataset that compromised the integrity and possible findings of the machine learning models.  The month of August was accidentally saved as September. (see screen capture below)
![image](https://github.com/tmmytwllms/final_project/blob/main/Images/discover_dups2.jpg)

This resulted in the absence of September as well as the doubling of the month of August. (see SQL query below)
![image](https://github.com/tmmytwllms/final_project/blob/main/Images/discover_dups1.jpg)

We were able to remove the duplications from a pandas notebook, 
![dedup1](https://github.com/tmmytwllms/final_project/blob/main/Images/dedup1.jpg)

re-sample the universe
![dedup2](https://github.com/tmmytwllms/final_project/blob/main/Images/dedup2.jpg)

chart the new distribution of the resampled dataset and export the dataframe as a csv and upload to the database:
![dedup3](https://github.com/tmmytwllms/final_project/blob/main/Images/dedup3.jpg)

### Dashboard
A blueprint for the dashboard is created and includes all of the following:
- Storyboard on Google Slide(s):
https://docs.google.com/presentation/d/18d2kpjwzPQlTeO8HySODeFJqht5v4XSi9c_GcyEFgKY/edit?usp=sharing

- We will be using a Tableau Public dashboard to present our story as well as provide opportunities to select filters and generate dynamic charts.

- Interactive elements include Average Monthly Flights, Flight delays by weekday and departure block, delays by flight distance, concurrent flights, and airports.

## Segment 3
### __Presentation__

__Content__

* _Topic:_ The targeted goal of this analysis is to identify the features most associated with on-time departures. This will provide insights on how likely your next flight would be delayed based on if certain conditions are being met, such as the weather or the time of your travel to name a few. 

* _Rationale:_ According to Airlines for America (A4A)in 2019, "the average cost of aircraft block (taxi plus airborne) time for U.S. passenger airlines was $74.24 per minute...Delayed aircraft are estimated to have cost the airlines several billion dollars in additional expense. Delays also drive the need for extra gates and ground personnel and impose costs on airline customers (including shippers) in the form of lost productivity, wages and goodwill." <sup id="a1">[1](#f1)</sup>  In addition to the considerable losses associated with delays, there are psychological costs as well. A 2007, University of Michigan’s American Customer Satisfaction Index score for U.S. airlines registered only 63% satisfaction.<sup id="a2">[2](#f2)</sup> Since the return to high volume air travel after months of pandemic-induced closed borders and the grounding of most flights, we have seen a disturbing rise in "passenger unruliness".  According to a recent CNN report, the FAA has issued more than $1 million in fines to such passengers already in 2021. <sup id="a3">[3](#f3)</sup>  while most of the media attention has been focused on the refusal to wear masks during flights, data from the IATA from 2012-2015 demonstrate the rise of passenger disruption well before the onset of the pandemic.<sup id="a4">[4](#f4)</sup>  Many reasons contribute to this rise: fuller cabins, shrinking leg space, increased security checks, additional fees for cary-on bags, etc.  Such issues are endemic to the industry and effect all carriers to varying degrees.  However, flight delays, as already mentioned, add to an already challenging travel sector.

* _Description data source:_ This is a classification dataset with detailed airline, weather, airport and employment information collected from the Bureau of Transportation statistics, National Center for Environment Information (NOAA).  Flight delay data has been curated by Jen Wadkins and stored on kaggle.com (https://www.kaggle.com/threnjen/2019-airline-delays-and-cancellations) and includes 24 raw data files, 1 train_test_small (Jan 2019), 1 train_test 2019, new_data 2020 and new_data_small (2020).  We are using 1 large train_test consisting of 6.5 million records as our universe.

* _Questions:_ "What are the key features most correlated to on-time departures?"

* _Description of the data exploration phase of the project:_ Our initial dataset (train_test.csv) is a very clean and high quality file, consisting of 6,538,721 rows with no null values.  

![EDA](https://github.com/tmmytwllms/final_project/blob/main/Images/EDA.jpg)

Data munging will be described below and consists of removing duplications for August records.

* _Description of the analysis phase of the project_ 

* _Technologies, languages, tools, and algorithms used throughout the project_

### __GitHub__

### __Machine Learning Model__

#### Feature Selection
The sample_train_test table contain 26 features so we performed a feature selection to reduce the number of input variables for the predictive model. We used a combination of a tree-based estimator (i.e. random forests) and the correlation matrix to get an insight of the most influential features on the targeted variable ("DEP_DEL15" = Departure delays over 15 minutes). Here are the features selected based:

```
'DEP_BLOCK' - Departure block
'SEGMENT_NUMBER' - The segment that this tail number is on for the day
'CONCURRENT_FLIGHTS' - Concurrent flights leaving from the airport in the same departure block
'AIRLINE_AIRPORT_FLIGHTS_MONTH' - Avg Flights per month for Airline AND Airport
'AIRPORT_FLIGHTS_MONTH' - Avg Airport Flights per Month
'PRCP' - Inches of precipitation for day
'TMAX' - Max temperature for day
'AWND' - Max wind speed for day
'SNOW' - Inches of snowfall for day
```
> - Random forest feature selection output: Click [here](https://github.com/tmmytwllms/final_project/blob/main/Images/random_forest_feature_rank.png)
> - Correlation matrix output: Click [here](https://github.com/tmmytwllms/final_project/blob/main/Images/correlation_matrix.png)


#### Failed Models
We have trained and tested the data with the following models and all of which resulted in overfitted results:
- Logistic Regression Model
- K-nearest Neighbor Model
- Ensemble Random Forest Model

In addition, the SVM model had to be dropped due to the size of the dataset being too large for the limited resources that is available to us. The model was unable to "fit" the dataset, and attempts to scale the data, both in Google Colabs and locally proved unsuccessful.

> - Logistic regression classification report: Click [here](https://github.com/tmmytwllms/final_project/blob/main/Images/random_forest_acc_scores.png)

### __Database__



## Footnotes
<b id="f1">1</b>: See https://www.airlines.org/dataset/u-s-passenger-carrier-delay-costs/.

<b id="f2">2</b>: See https://economics.ecu.edu/wp-content/pv-uploads/sites/165/2019/07/ecu0707.pdf.

<b id="f3">3</b>: See https://www.cnn.com/travel/article/flight-attendants-unruly-passengers-covid/index.html.

<b id="f4">4</b>: Ibid.

Slides Presentations are drafted in Google Slides
## Segment 4
