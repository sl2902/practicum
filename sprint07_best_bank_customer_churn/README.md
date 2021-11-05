## Project description

Beta Bank customers are leaving: little by little, chipping away every month. The bankers figured out it’s cheaper to save the existing customers rather than to attract new ones.
We need to predict whether a customer will leave the bank soon. You have the data on clients’ past behavior and termination of contracts with the bank.
Build a model with the maximum possible F1 score. To pass the project, you need an F1 score of at least 0.59. Check the F1 for the test set.
Additionally, measure the AUC-ROC metric and compare it with the F1.


## Description of the data

- `RowNumber` — data string index
- `CustomerId` — unique customer identifier
- `Surname` — surname
- `CreditScore` — credit score
- `Geography` — country of residence
- `Gender` — gender
- `Age` — age
- `Tenure` — period of maturation for a customer’s fixed deposit (years)
- `Balance` — account balance
- `NumOfProducts` — number of banking products used by the customer
- `HasCrCard` — customer has a credit card
- `IsActiveMember` — customer’s activeness
- `EstimatedSalary` — estimated salary
- `Exited` — сustomer has left



## Answer these questions:

- Examine the balance of classes. Train the model without taking into account the imbalance. Briefly describe your findings.
- Improve the quality of the model. Make sure you use at least two approaches to fixing class imbalance. Use the training set to pick the best parameters. 
- Train different models on training and validation sets. Find the best one. Briefly describe your findings.
- Perform the final testing.


## General conclusion

- Upsampling helped with improving the F1 score in both the LogisticRegression and RandomForestClassifier models. However, RandomForest Classifier has a significant edge over LogisticRegression model.
- The top 3 features RandomForest identifies as being important indicators of whether a customer is likely to exit or not are: `Age`, `NoOfProducts` and `EstimatedSalary`.