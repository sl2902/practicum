## Project description

The goal is to prepare a report for a bank’s loan division. You’ll need to find out if a customer’s marital status and number of children have an impact on whether they will default on a loan. The bank already has some data on customers’ credit worthiness.
Your report will be considered when building a **credit score** for a potential customer. A **credit score** is used to evaluate the ability of a potential borrower to repay their loan.

## Description of the data

- `children`: the number of children in the family
- `days_employed`: how long the customer has been working
- `dob_years`: the customer’s age
- `education`: the customer’s education level
- `education_id`: identifier for the customer’s education
- `family_status`: the customer’s marital status
- `family_status_id`: identifier for the customer’s marital status
- `gender`: the customer’s gender
- `income_type`: the customer’s income type
- `debt`: whether the customer has ever defaulted on a loan
- `total_income`: monthly income
- `purpose`: reason for taking out a loan

## Answer these questions:

- Is there a connection between having kids and repaying a loan on time?
- Is there a connection between marital status and repaying a loan on time?
- Is there a connection between income level and repaying a loan on time?
- How do different loan purposes affect on-time loan repayment?

## General conclusion

- The mean age in the group is 43 years; Majority of the borrowers are women - 66%.
- The most common education is secondary education at 70%.
- The most popular income_type is employee who make up 51% of the population.
- 58% of the population is married.
- After cleaning the mean days_employed ranges from 3 years to 44 years.
- After cleaning the mean `total_income` is 26700 per month.

Based on the above observations, it appears that no one field significantly impacts loan repayment. Maybe they have to be looked at collectively. Additionally, this dataset maybe lacking important features such as credit score, previous loan history, location, loan size, duration, etc which may have a greater impact on loan repayment.

