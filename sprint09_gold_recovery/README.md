## Project description

The data is stored in three files:

- gold_recovery_train.csv — training dataset download
- gold_recovery_test.csv — test dataset download
- gold_recovery_full.csv — source dataset download

Data is indexed with the date and time of acquisition (date feature). Parameters that are next to each other in terms of time are often similar.
Some parameters are not available because they were measured and/or calculated much later. That's why, some of the features that are present in the training set may be absent from the test set. The test set also doesn't contain targets.
The source dataset contains the training and test sets with all the features.
You have the raw data that was only downloaded from the warehouse. Before building the model, check the correctness of the data. For that, use our instructions.



## Description of the data

- `rougher.output.recovery`  - Output of the rougher
- `rougher.output.tail_ag`   - Concentration of Silver
- `rougher.output.tail_sol`  - Concentration of solution
- `rougher.output.tail_au`   - Concentration of Gold
- `rougher.input.floatbank11_xanthate` - Floatation bank input
- `secondary_cleaner.output.tail_sol`  - Secondary stage cleaner concentrate
- `final.output.recovery`  - Final output
- `rougher.calculation.au_pb_ratio`  - Gold to Lead ratio
- `primary_cleaner.input.sulfate`   - Concentrate of sulphate
- `primary_cleaner.input.depressant` - Concentrate of depressant



## Answer these questions:

- Check that recovery is calculated correctly. Using the training set, calculate recovery for the rougher.output.recovery feature. Find the MAE between your calculations and the feature values. Provide findings.
- Analyze the features not available in the test set. What are these parameters? What is their type?
- Perform data preprocessing.
- Take note of how the concentrations of metals (Au, Ag, Pb) change depending on the purification stage.
- Compare the feed particle size distributions in the training set and in the test set. If the distributions vary significantly, the model evaluation will be incorrect.
-  Consider the total concentrations of all substances at different stages: raw feed, rougher concentrate, and final concentrate. Do you notice any abnormal values in the total distribution? If you do, is it worth removing such values from both samples? Describe the findings and eliminate anomalies.
- Write a function to calculate the final sMAPE value.
- Train different models. Evaluate them using cross-validation. Pick the best model and test it using the test sample. Provide findings.


## General conclusion

- The missing values in the train and test sets were filled using interpolation.
- There are several days where the target variables, especially, `rougher.output.recovery` which has 0 values because
the related concentrates at that stage had 0 values.
- These anomalies could be attributed due to a couple of reasons: 1) Production issues. 2) Instrument failures.
- The change in mean concentration of Gold increases with every stage of the purification process, but the opposite happens for Silver, which is expected as we are interested in improving the share of Gold in the final concentrate.
- The distribution of input size of concentrates between the train and test sets is amost similar which assures us that predictions aren't going to be way off.
- Correlation matrix helped us identify several collinear features which could be dropped as they wouldn't have improved the signal to noise ratio.
- The best model between LinearRegression and RandomForestRegression after applying cross validation with 5 folds is
RandomForestRegression; the mean sMAPE during training is 1.026.
- The sMAPE on the test set is 0.866.
- By addressing the anomalies in the rougher.output.concentrate and in the final.output.concentrate substances, we could improve the performance of the model by lowering the sMAPE, which would help the company make better predictions of `rougher.concentrate.recovery` and `final.output.recovery`.