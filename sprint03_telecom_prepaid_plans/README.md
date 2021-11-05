## Project description

You work as an analyst for the telecom operator Megaline. The company offers its clients two prepaid plans, Surf and Ultimate. The commercial department wants to know which of the plans brings in more revenue in order to adjust the advertising budget.
You are going to carry out a preliminary analysis of the plans based on a relatively small client selection. You'll have the data on 500 Megaline clients: who the clients are, where they're from, which plan they use, and the number of calls they made and text messages they sent in 2018. Your job is to analyze clients' behavior and determine which prepaid plan brings in more revenue.


## Description of the data

The users table (data on users):

- `user_id` — unique user identifier
- `first_name` — user's name
- `last_name` — user's last name
- `age` — user's age (years)
- `reg_date` — subscription date (dd, mm, yy)
- `churn_date` — the date the user stopped using the service (if the value is missing, the calling plan was being used when this database was extracted)
- `city` — user's city of residence
- `plan` — calling plan name

The calls table (data on calls):

- `id` — unique call identifier
- `call_date` — call date
- `duration` — call duration (in minutes)
- `user_id` — the identifier of the user making the call

The messages table (data on texts):

- `id` — unique text message identifier
- `message_date` — text message date
- `user_id` — the identifier of the user sending the text

The internet table (data on web sessions):

- `id` — unique session identifier
- `mb_used` — the volume of data spent during the session (in megabytes)
- `session_date` — web session date
- `user_id` — user identifier

The plans table (data on the plans):

- `plan_name` — calling plan name
- `usd_monthly_fee` — monthly charge in US dollars
- `minutes_included` — monthly minute allowance
- `messages_included` — monthly text allowance
- `mb_per_month_included` — data volume allowance (in megabytes)
- `usd_per_minute` — price per minute after exceeding the package limits (e.g., if the package includes 100 minutes, the 101st minute will be charged)
- `usd_per_message` — price per text after exceeding the package limits
- `usd_per_gb` — price per extra gigabyte of data after exceeding the package limits (1 GB = 1024 megabytes)

## Answer these questions:

For each user, find:
- The number of calls made and minutes used per month
- The number of text messages sent per month
- The volume of data per month
- The monthly revenue from each user (subtract the free package limit from the total number of calls, text messages, and data; multiply the result by the calling plan value; add the monthly charge depending on the calling plan)
- Describe the customers' behavior. Find the minutes, texts, and volume of data the users of each plan require per month. Calculate the mean, variance, and standard deviation. Plot histograms. Describe the distributions.
- The average revenue from users of Ultimate and Surf calling plans differs.
- The average revenue from users in NY-NJ area is different from that of the users from other regions.
- How you formulated the null and alternative hypotheses.
- What criterion you used to test the hypotheses and why.


## General conclusion

- There are 500 customers, in 2018, who have a choice between 2 plans: 1) Surf. 2) Ultimate.
- 68% of the users have subscribed to surf plan as opposed to 32% who use ultimate.
- 7% of the users have churned in 2018.
- Average number of calls per month per user in 2018 is 24
- Average duration of call per month per user in 2018 is 171 minutes
- Average duration of session per month per user in 2018 is 6 GB
- Average number of messages per month per user in 2018 is 16
- Average revenue per month per user in 2018 is $50
- The most of the subscribers are in 60+ years category; they make up 27% of the population; they are followed closely by the other extreme group, age-wise, of users in the 18-29 years who make up 24% of the population.
- Finally, the hypothesis test on whether the average revenue between surf users and ultimate users being different is concerned shows that the results are statistically significant such that we reject the null.
- However, the hypothesis test on whether the average revenue between NY-NJ area users being different from the rest of the population doesn't show any statistical significance.
- Based on the statistical analysis, we can conclude that Surf plan is relatively more profitable for the telco.