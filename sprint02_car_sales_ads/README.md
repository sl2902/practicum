## Project description

You're an analyst at Crankshaft List. Hundreds of free advertisements for vehicles are published on your site every day. You need to study data collected over the last few years and determine which factors influence the price of a vehicle.


## Description of the data

- `price` - price of the vehicle
- `model_year` - model year of the vehicle
- `model` - type of model
- `condition` - condition of the vehicle
- `cylinders` - number of cylinders
- `fuel` — gas, diesel, etc.
- `odometer` — the vehicle's mileage when the ad was published
- `transmission` - type of transmission
- `paint_color` - color of the vehicle
- `is_4wd` — whether the vehicle has 4-wheel drive (Boolean type)
- `date_posted` — the date the ad was published
- `days_listed` — from publication to removal

## Answer these questions:

- Study the following parameters: price, vehicle's age when the ad was placed, mileage, number of `cylinders`, and condition. Plot histograms for each of these parameters. Study how outliers affect the form and readability of the histograms.
- Determine the upper limits of outliers, remove the outliers and store them in a separate DataFrame, and continue your work with the filtered data.
- Use the filtered data to plot new histograms. Compare them with the earlier histograms (the ones that included outliers). Draw conclusions for each histogram.
- Study how many days advertisements were displayed (days_listed). Plot a histogram. Calculate the mean and median. Describe the typical lifetime of an ad. Determine when ads were removed quickly, and when they were listed for an abnormally long time.
- Analyze the number of ads and the average price for each type of vehicle. Plot a graph showing the dependence of the number of ads on the vehicle type. Select the two types with the greatest number of ads.
- What factors impact the price most? Take each of the popular types you detected at the previous stage and study whether the price depends on age, mileage, condition, transmission type, and color. For categorical variables (`transmission` type and color), plot box-and-whisker charts, and create scatterplots for the rest. When analyzing categorical variables, note that the categories must have at least 50 ads; otherwise, their parameters won't be valid for analysis.

## General conclusion

- There are ~51K records and 13 attributes. Each row describes an advertisement placed for a car.
- The unfiltered `price` ranges from $1 to $375,000; the odometer value ranges from 0 - 990K miles. The `model_year` ranges from 1908 - 2019. These fields have wide ranging values.
- Based on the `brand` distribution - ford, chevrolet and toyota are most popular brands with 54% of the ads placed on this site.
- The `brand` Mercedez-Benz is the only model for which the `odometer` value is missing for all the records, which is suspicious, but as these were only 44 in number, it is insignificant; this could possibly be a human error as the ad posted on the site is not verified.
- About 2227(4%) of the ads have a reported car age of 0 years.
- After removing 10% of the ads we observe the following: a) The age appears to peak at 5 years. b) `days_listed` shows a nice peak between 28-32 days. c) `price` has a peak around $7000. d) `odometer` peaks at 125K miles, and it looks much cleaner with the outliers removed. e) `model_year` continues to peak at 2013.
- The mean number of days an ad is posted is 37 days.
- The top 2 vehicle type based on frequency of ads posted are: SUV and truck.
- Analysing the influence of the following factors such as `transmission`, `condition`, `paint_color`, `age` and `odometer` for these 2 vehicles, we notice that condition of the vehicle and age play an important role in deciding the price; When we look at `transmission` however, we can see that it plays a relatively more important role for truck than it does for SUV. Similarly, `paint_color` is not so important in deciding the price for SUV as much as it does for truck (this needs to be validated); While `odometer` should have been an important factor in determining price, in this dataset, it appears that it has a moderate influence on price. However, it plays a relatively more important role for SUV and truck than it does for other vehicle type.