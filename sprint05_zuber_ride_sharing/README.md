## Project description

You're working as an analyst for Zuber, a new ride-sharing company that's launching in Chicago. Your task is to find patterns in the available information. You want to understand passenger preferences and the impact of external factors on rides.
Working with a database, you'll analyze data from competitors and test a hypothesis about the impact of weather on ride frequency.


## Description of the data

A database with info on taxi rides in Chicago:

**neighborhoods** table: data on city neighborhoods

- `name`: name of the neighborhood
- `neighborhood_id`: neighborhood code

**cabs** table: data on taxis

- `cab_id`: vehicle code
- `vehicle_id`: the vehicle's technical ID
- `company_name`: the company that owns the vehicle

**trips** table: data on rides

- `trip_id`: ride code
- `cab_id`: code of the vehicle operating the ride
- `start_ts`: date and time of the beginning of the ride (time rounded to the hour)
- `end_ts`: date and time of the end of the ride (time rounded to the hour)
- `duration_seconds`: ride duration in seconds
- `distance_miles`: ride distance in miles
- `pickup_location_id`: pickup neighborhood code
- `dropoff_location_id`: dropoff neighborhood code

**weather_records** table: data on weather

- `record_id`: weather record code
- `ts`: record date and time (time rounded to the hour)
- `temperature`: temperature when the record was taken
- `description`: brief description of weather conditions, e.g. "light rain" or "scattered clouds"

## Answer these questions:

- Find the number of taxi rides for each taxi company for November 15-16, 2017. Name the resulting field trips_amount and print it along with the company_name field. 
Sort the results by the trips_amount field in descending order.
- Find the number of rides for every taxi company whose name contains the words "Yellow" or "Blue" for November 1-7, 2017. Name the resulting variable trips_amount. Group the results by the `company_name` field.
- In November 2017, the most popular taxi companies were Flash Cab and Taxi Affiliation Services. Find the number of rides for these two companies and name the resulting variable trips_amount. 
Join the rides for all other companies in the group "Other." Group the data by taxi company names. Name the field with taxi company names company. Sort the result in descending order by trips_amount.
- Retrieve the identifiers of the O'Hare and Loop neighborhoods from the neighborhoods table.
- For each hour, retrieve the weather condition records from the weather_records table. Using the CASE operator, break all hours into two groups: "Bad" if the description field contains the words "rain" or "storm," and "Good" for others. Name the resulting field weather_conditions. The final table must include two fields: date and hour (ts) and weather_conditions.
- Retrieve from the trips table all the rides that started in the Loop (neighborhood_id: 50) and ended at O'Hare (neighborhood_id: 63) on a Saturday. Get the weather conditions for each ride. Use the method you applied in the previous task. Also retrieve the duration of each ride. Ignore rides for which data on weather conditions is not available.


## General conclusion

- Zuber has its work cutout for itself. It's closest competitors, based on November 2017 rides from Chicago, are: 1) Flash Cab. 2) Taxi Affiliation Services
- A few neighborhoods are more popular than others based on average duration of the trip. Loop, Rivernorth are a couple of such dropoff locations that witness a lot of activity.
- From 1-7 November, Yellow taxi cabs have done more trips than Blue taxi cabs.
- 83% of the trips were made in Good weather.
- Analysis of the trips on the Saturdays in Novemeber, from Loop to O'Hare, reveals that most of the trips happened on the 1st two Saturdays. Another interesting observation is that distribution of the duration of the trips is uniform between 4 AM - 8 PM; the variations are only seen before 4 AM and after 8 PM.
- The hypothesis testing confirms that there is evidence to show that there is a difference in mean trip duration during Bad weather. On average taxis take 6 mins longer to complete a trip during Bad weather.