## Project description

Rusty Bargain used car sales service is developing an app to attract new customers. In that app, you can quickly find out the market value of your car. You have access to historical data: technical specifications, trim versions, and prices. You need to build the model to determine the value.

Rusty Bargain is interested in:
- the quality of the prediction
- the speed of the prediction
- the time required for training



## Description of the data

- `DateCrawled` — date profile was downloaded from the database
- `VehicleType` — vehicle body type
- `RegistrationYear` — vehicle registration year
- `Gearbox` — gearbox type
- `Power` — power (hp)
- `Model` — vehicle model
- `Mileage` — mileage (measured in km due to dataset's regional specifics)
- `RegistrationMonth` — vehicle registration month
- `FuelType` — fuel type
- `Brand` — vehicle brand
- `NotRepaired` — vehicle repaired or not
- `DateCreated` — date of profile creation
- `NumberOfPictures` — number of vehicle pictures
- `PostalCode` — postal code of profile owner (user)
- `LastSeen` — date of the last activity of the user
- `Price` — price (Euro)



## Answer these questions:

- Train different models with various hyperparameters (You should make at least two different models, but more is better. Remember, various implementations of gradient boosting don't count as different models.) The main point of this step is to compare gradient boosting methods with random forest, decision tree, and linear regression.
- Analyze the speed and quality of the models.


## General conclusion

- RustyBargain will have to make a compromise between a 7x increase in training time versus a +/- 1.1x increase in RMSE should it decide between the top 2 models - RandomForestRegression and CatBoostRegression.
- However, CatBoostRegressor offers several hyperparameters to play with, and increasing the number of iterations, and adding regularization may help in achieving a better RMSE. Therefore, in my view, it should pick CatBoostRegression simply because it is really fast, and it offers several options to improve the evaluation metric.