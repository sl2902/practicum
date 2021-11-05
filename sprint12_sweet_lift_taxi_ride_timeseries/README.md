## Project description

Sweet Lift Taxi company has collected historical data on taxi orders at airports. To attract more drivers during peak hours, we need to predict the amount of taxi orders for the next hour. Build a model for such a prediction.
The RMSE metric on the test set should not be more than 48.



## Description of the data

- `num_orders` - Number of orders
- `datetime` - Date of ride



## Answer these questions:

- Download the data and resample it by one hour.
- Analyze the data.
- Train different models with different hyperparameters. The test sample should be 10% of the initial dataset.
- Test the data using the test sample and provide a conclusion.


## General conclusion

- The mean `num_orders` shows an upward trend in the last 5 months between 2018-03-01 and 2018-08-31.
- The data was prepared by creating several date and time-series related features, such as, `month`, `day`, `dayofweek`, `hour`, 
`lag_*`, `rolling_mean`, `rolling_median`, and `rolling_std`.
- The decomposition of time-series components shows a daily seasonality, which peaks at 12 AM, and drops to its lowest at 6AM, and
during the day peaks at around 5PM.
- The residuals reveals that the mean is not 0, which could bias the forecast.
- CatBoostRegressor emerged as the best model with the lowest RMSE. However, it also took the longest to train the model.