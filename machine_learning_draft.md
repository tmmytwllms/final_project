# Project Overview
The targeted goal of this analysis is to predict departure delays based on various features. This will provide insights on how likely your next flight would be delayed based on if certain conditions are being met, such as the weather or the time of your travel to name a few. 
#### **Target**
- Delay (over 15 minutes)

#### **Features**
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

#### Dataset used:
[2019 Airline Delays w/ Weather and Airport Detail](https://www.kaggle.com/threnjen/2019-airline-delays-and-cancellations)

# Machine Learning Mockup

### | Model: 
- Supervised Learning Logistic Regression

```
from sklearn.linear_model import LogisticRegression
```

Since the targeted goal is to predict binary outcomes based on previous data points, rather the flight will be delayed or depart on time, a supervised learning classification model will be used to analyze the dataset. The outcomes will be labeled with '0' for on-time departure and '1' for delayed flights.

### | Separate the features from the target
```
X = df.drop(columns='Delay')
y = df['Delay']
```

### | Split data into training and testing
```
from sklearn.model_selection import train_test_split

X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=1, stratify=y)
```

### | Scale & encode categorical features?


### | Create the logistic regression model
```
classifier = LogisticRegression(solver='lbfgs', max_iter=200, random_state=1)
```

### | Train the model
```
classifier.fit(X_train, y_train)
```

### | Predict data
```
y_pred = classifier.predict(X_test)
```

### | Model's accuracy
```
from sklearn.metrics import accuracy_score
print(accuracy_score(y_test, y_pred))

from sklearn.metrics import classification_report
report = classification_report(y_test, y_pred)
print(report)
```


### | Potential ML Model: 
- Support Vector Machines
- Decision tree
- Ensemble learning
    - Bootstrap 
