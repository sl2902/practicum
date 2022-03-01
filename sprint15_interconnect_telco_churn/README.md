## Project description

The telecom operator Interconnect would like to be able to forecast their churn of clients. If it's discovered that a user is planning to leave, they will be offered promotional codes and special plan options. Interconnect's marketing team has collected some of their clientele's personal data, including information about their plans and contracts.



## Description of the data

- `customerID` - Unique ID
- `gender` - Gender
- `SeniorCitizen` - Whether senior citizen or not
- `Partner` - Has partner or not
- `Dependents` - Number of dependents
- `BeginDate` - Joining date
- `EndDate` - Ending date
- `Type` - Plan type
- `PaperlessBilling` - Type of paperpless billing
- `PaymentMethod` - Payment method
- `MonthlyCharges` - Monthly charges
- `TotalCharges` - Total charges
- `MultipleLines` - Whether has multiple lines
- `InternetService` - Whether has internet service
- `OnlineSecurity` - Whether has online security
- `OnlineBackup` - Whether has online backup
- `DeviceProtection` - Whether has device protection
- `TechSupport` - Whether has tech support
- `StreamingTV` - Whether has streaming TV
- `StreamingMovies` - Whether has streaming movies
- `is_churned` - Whether churned
- `num_days` - Number of days in the system
- `year` - Year
- `num_services` - Number of services availed


## Answer these questions:

- Perform data analysis.
- Create new features and clean the data.
- Build different models and perform hyperparameter tuning with cross validation


## General conclusion

- Exploratory analysis around gender, class of citizen and characteristics of the customers have revealed some useful insights into the behaviour of churned customers.
- The mean monthly spend for a churned customer is higher by $13 compared with an active customer.
- 1037(47%) of the customers who sign up do so within the first year of them churning.
- Other behaviour noted among the churned customers are: a) customers with no dependents or partners tend to easily churn. b) Monthly billing gives them an easy exit option. c) Paperless billing and Fiber optic internet plan have been a thorn in retaining such customers.
- The missing values in TotalCharges were imputed using SimpleImputer. Initially, I thought I would infer these values based on the MonthlyCharges, but I noticed that the monthly charges differ despite having the same usage duration and set of services. The resulting imputation didn't shift the median noticeably. I have also imputed the "missing" values for MultipleLines and various Internet services as I was under the assumption that they were missing at random. But, I was advised that this wasn't the case, so after merging the datasets, I filled them with a response of "No".
- In the feature engineering step, I created num_day which is derived by taking the difference between EndDate and BeginDate. Additionally, I created num_pmt which is a ratio of TotalCharges/MonthlyCharges. num_services, which adds up the various services for a customer depending on whether they've answered "Yes" or "No". Date features such as year, month and dayofweek were extracted from BeginDate.
- To avoid data leakage, I stratfied and split the dataset into train and test into a ratio of 80:20. I create a copy of this dataset, as I wanted to test whether num_days caused any leakage; I applied Oridinal Encoding for the `TypeandPaymentMethod` features.
- I also scaled the numerical features such as num_days, num_pmt, num_services, MonthlyCharges, TotalCharges, including the date features.
- I One-hot encoded the boolean features.
- Excluding the Dummy model, I built 6 models using LogisticRegression, RandomForestClassifier and CatBoostClassifier. Each model was trained on the 2 datasets.
- I used 5-fold cross validation during GridSearch to identify useful hyperparameters for the respective models. Only 1 or 2 hyperparameters were tuned to save time.
- With leakage, the LogisticRegression model and CatBoost hit 99% AUC ROC on the test-set. Although the former completed 20x faster.
- Because of the choice of features, I was able to build a simple model using LogisticRegression which achieved an AUC ROC score of 91% on the test set. This model took about 5 seconds to train, and didn't overfit either.
