## Project description

The Sure Tomorrow insurance company wants to solve several tasks with the help of Machine Learning, and you are asked to evaluate that possibility.

- Task 1: Find customers who are similar to a given customer. This will help the company's agents with marketing.
- Task 2: Predict whether a new customer is likely to receive an insurance benefit. Can a prediction model do better than a dummy model?
- Task 3: Predict the number of insurance benefits a new customer is likely to receive using a linear regression model.
- Task 4: Protect clients' personal data without breaking the model from the previous task.



## Description of the data

- `gender` - Gender
- `age` - Age of insured
- `salary` - Salary of insured
- `number of family members` - Number of dependents



## Answer these questions:

- Check that the data is free of issues — there is no missing data, extreme values, and so on.
- Work on each task and answer the questions posed in the project template.
- Draw conclusions based on your experience working on the project.


## General conclusion

- We used KNearestNeighbhors to find the a customer close to a given customer; the solution was improved with scaling the data, and using the Euclidean metric to improve the predictions.
- We have also built models to help the marketing team predict whether a customer will likely recieve insurance benefits or not. And, the resulting model with scaled data, performed very well compared to a dummy model. The resulting model produced had an F1 score of 92% on the validation set.
- We have also built a LinearRegression model on both scaled and unscaled data, to predict the number of insurance benefits a new customer would receive; the model produced a moderately high R2 score 66%. What we have observed is that scaling didn't impact the results.
- We obfuscated the data, and showed analytically that there is no difference between the obfuscated data and the original data.
- We also proved this computationally, by building a LinearRegression model using the obfuscated data, and the resulting RMSE and R2 scores were identical to that obtained with modeling the original data.