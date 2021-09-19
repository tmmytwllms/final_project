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

### Presentation
__Content__.

The presentation outlines the project,
including the following:
- Selected topic 
- Reason why they selected their topic 
- Description of their source of data 
- Questions they hope to answer with the data 
- Description of the data exploration phase of the project 
- Description of the analysis phase of the project
Slides Presentations are drafted in Google Slides

### GitHub
Main Branch All code in the main branch is productionready.
The main branch should include: ✓ All code necessary to perform
exploratory analysis ✓ Some code necessary to complete the
machine learning portion of the project
README.md README.md must include: ✓ Description of the communication
protocols ✓ Outline of the project (this may include
images, but should be easy to follow and
digest)
Note: The descriptions and explanations
required in all other project deliverables
should also be in your README.md as
part of your outline, unless otherwise
noted.
Individual Branches ✓ At least one branch for each team member ✓ Each team member has at least four
commits for the duration of the second
segment (eight total commits per person)


## Machine Learning Models 
Team members submit the code for their machine learning model, as well as the following:

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

## Machine Learning Models 
Team members submit the code for their machine learning model, as well as the following:

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

- We connected to the database by installing a local version of Postgress in Google Collab and executed SQL commands using Postgress to retrieve the table data.

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
- Unfortunately during testing this model had to be dropped and will not be utilizied further in this project. The model was unable to "fit" the data set and attempts to scale the data, scale Collabs with GPU processing, and run the model locally were uncessful. 


### Database
Team members present a fully integrated database.
- Database stores static data for use during the project: Raw data tables and aggregated data tables have been imported into the database using pgAdmin from the Kaggle dataset.
- Database interfaces with the project in some format (e.g., scraping updates the database, or database connects to the model) : The machine learning models connect to the database. Data is stored using pgAdmin, and hosted via AWS. Several notebooks and scripts have also connected to the database in order to perform data cleansing, data transformation, and read/write operations. 
- Includes at least two tables (or collections, if using MongoDB). The database contains multiple tables, including a training and testing set for use with the machine learning models. We are using PostgreSQL.
- Includes at least one join using the database language (not including any joins in Pandas). The data that is being used for this project is divided in such a way that no additional tables needed to be built via a series of joins.
- Includes at least one connection string (using SQLAlchemy or PyMongo). We connect to our database using a direct connection using a Google Colab notebook.
- Note: If you use a SQL database, you must provide your ERD with relationships. ERD has been provided for the raw data tables.

### Dashboard
A blueprint for the dashboard is created
and includes all of the following:
✓ Storyboard on Google Slide(s) ✓ Description of the tool(s) that will be
used to create final dashboard ✓ Description of interactive element(s) 

## Segment 3

## Segment 4
