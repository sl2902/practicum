## Project description

You work for the online store Ice, which sells video games all over the world. User and expert reviews, genres, platforms (e.g. Xbox or PlayStation), and historical data on game sales are available from open sources. You need to identify patterns that determine whether a game succeeds or not. This will allow you to spot potential big winners and plan advertising campaigns.
In front of you is data going back to 2016. Let’s imagine that it’s December 2016 and you’re planning a campaign for 2017.
(The important thing is to get experience working with data. It doesn't really matter whether you're forecasting 2017 sales based on data from 2016 or 2017 sales based on data from 2016.)
The dataset contains the abbreviation ESRB. The Entertainment Software Rating Board evaluates a game's content and assigns an age rating such as Teen or Mature.


## Description of the data

- `Name` - Name of the game
- `Platform` - Platform game was developed for
- `Year_of_Release` - Year game was released
- `Genre` - Category
- `NA_sales` - (North American sales in USD million)
- `EU_sales` - (sales in Europe in USD million)
- `JP_sales` - (sales in Japan in USD million)
- `Other_sales` - (sales in other countries in USD million)
- `Critic_Score` - (maximum of 100)
- `User_Score` - (maximum of 10)
 -`Rating` - (ESRB)

## Answer these questions:

- Look at how many games were released in different years. Is the data for every period significant?
- Look at how sales varied from platform to platform. Choose the platforms with the greatest total sales and build a distribution based on data for each year. 
- Find platforms that used to be popular but now have zero sales.  
- How long does it generally take for new platforms to appear and old ones to fade?
- Determine what period you should take data for. To do so, look at your answers to the previous questions. The data should allow you to build a prognosis for 2017.
- Work only with the data that you've decided is relevant. Disregard the data for previous years.
- Which platforms are leading in sales? Which ones are growing or shrinking? Select several potentially profitable platforms.
- Build a box plot for the global sales of all games, broken down by platform. Are the differences in sales significant? What about average sales on various platforms? Describe your findings.
- Take a look at how user and professional reviews affect sales for one popular platform (you choose). Build a scatter plot and calculate the correlation between reviews and sales. Draw conclusions.
- Keeping your conclusions in mind, compare the sales of the same games on other platforms.
- Take a look at the general distribution of games by genre. What can we say about the most profitable genres? Can you generalize about genres with high and low sales?


## General conclusion

- In terms of `total_sales`, NA region is the most profitable with a market share of 47%, followed by EU region with 31% and JP with 11%. This helps marketers to focus their campaigns accordingly.
- The market has a whole has witnessed a declining sales trend in the last 26 years; it peaked in 2008, and has experienced a sharp drop from there on. This indicates a shift from video game consoles, and its variants to mobile gaming, which is not captured in this dataset.
- `critic_score` is moderately important in influencing revenue, which is why it is important to fill up the missing values using a reliable source to be able to take advantage of this feature. However, `user_score` doesn't seem to influence `total_sales` despite having a positive correlation with `critic_score`; this implies some other factore might be driving `user_score`, which has no impact on sales.
- An analysis of the top 10 platforms between 2008-2016 reveals that most of the top performing platforms have seen a sharp decline in growth rate. Only PS4 managed to arrest the decline with a positive growth rate of 40%.
- PS2 is the most profitable platform in the 8 year period that the data was analyzed for. The median lifespan for a platform during this period is 10 years.
- Distribution wise, Nintendo is the most popular manufacturer with almost 38% share. On the heels of Nintendo is Sony with a similar market share of 38%, followed by Microsoft at 15%. However, in terms of revenue, Sony has a higher market share of 37%, followed by Nintendo at 34% and Microsoft at 25%.
- The user profile segmentation by revenue by regions reveals an interesting find: NA and EU users have a preference for Action, Shooter and Sports in that order, whereas JP users have a preference for Role-playing, Action and Misc in that oder, clearly showing a cultural influence in choice of video game playing.
- In terms of platform too, the user profile reveals that EU and NA users prefer games on Microsoft and Sony platforms over Nintendo, which is more popular in JP.
- With respect to ratings, games that have an E or M rating have a higher markert share over other rating in NA, a rating of M or E commands a higher market share in EU, whereas, a rating of E or T garners the highest market share in JP.
- Marketing teams have multiple variables at their disposal to build a campaign. Some of them are: `platform`, `genre`, `rating`, and `critic score`.