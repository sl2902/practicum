## Project description

You work for the OilyGiant mining company. Your task is to find the best place for a new well.
Steps to choose the location:
- Collect the oil well parameters in the selected region: oil quality and volume of reserves;
- Build a model for predicting the volume of reserves in the new wells;
- Pick the oil wells with the highest estimated values;
- Pick the region with the highest total profit for the selected oil wells.

You have data on oil samples from three regions. Parameters of each oil well in the region are already known. Build a model that will help to pick the region with the highest profit margin. Analyze potential profit and risks using the Bootstrapping technique.


## Description of the data

- `geo_data_0.csv` - download dataset data_0
- `geo_data_1.csv` - download dataset data_1
- `geo_data_2.csv` - download dataset data_2
- `id` — unique oil well identifier
- `f0`, `f1`, `f2` — three features of points (their specific meaning is unimportant, but the features themselves are significant)
- `product` — volume of reserves in the oil well (thousand barrels).



## Answer these questions:

- Train and test the model for each region
- Prepare for profit calculation
- Write a function to calculate profit from a set of selected oil wells and model predictions
- Calculate risks and profit for each region


## General conclusion

- The oil executives can with 95% confidence level rely on investing $100 million on building 200 oil wells in region2. The risk of loss is 1%, and the mean profit they can hope to make is $4,584,835.