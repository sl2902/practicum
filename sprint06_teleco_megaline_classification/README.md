## Project description

Mobile carrier Megaline has found out that many of their subscribers use legacy plans. They want to develop a model that would analyze subscribers' behavior and recommend one of Megaline's newer plans: Smart or Ultra.
You have access to behavior data about subscribers who have already switched to the new plans (from the project for the Statistical Data Analysis course). For this classification task, you need to develop a model that will pick the right plan. Since you’ve already performed the data preprocessing step, you can move straight to creating the model.
Develop a model with the highest possible accuracy. In this project, the threshold for accuracy is 0.75. Check the accuracy using the test dataset.


## Description of the data

Every observation in the dataset contains monthly behavior information about one user. The information given is as follows:
- `сalls` — number of calls,
- `minutes` — total call duration in minutes,
- `messages` — number of text messages,
- `mb_used` — Internet traffic used in MB,
- `is_ultra` — plan for the current month (Ultra - 1, Smart - 0).


## Answer these questions:

- Split the source data into a training set, a validation set, and a test set.
- Investigate the quality of different models by changing hyperparameters. Briefly describe the findings of the study.
- Check the quality of the model using the test set.
- Additional task: sanity check the model. This data is more complex than what you’re used to working with, so it's not an easy task. We'll take a closer look at it later.


## General conclusion

- Three models - DecisionTreeClassifier, LogisticRegression, and RandomForestClassifier were built and tested with 10 different hyperparameters
that are specific to the respecitive models, and the clear winner is RandomForestClassifier with `n_estimators=120` and an accuracy of ~83%.
- The results on the test set deteriorated slightly due to overfitting, and we obtained a test set accuracy of ~79%.
- Asuming the model picks the Smart plan user all the time, this will occur with a 69% probablity. Our model out performs the sanity check, which confirms that it is working correctly.