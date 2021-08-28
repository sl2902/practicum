

/*
* 1.Print the company_name field. 
* Find the number of taxi rides for each taxi company for November 15-16, 2017, 
* name the resulting field trips_amount, and print it, too. 
* Sort the results by the trips_amount field in descending order.
*/

SELECT cabs.company_name, COUNT(trip_id) AS trips_amount
FROM cabs INNER JOIN trips USING(cab_id)
WHERE start_ts::date BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY cabs.company_name
ORDER BY trips_amount DESC;

/*
* 2.
* Find the number of rides for every taxi company whose name 
* contains the words "Yellow" or "Blue" for November 1-7, 2017. 
* Name the resulting variable trips_amount. Group the results by the company_name field.
*/

SELECT cabs.company_name, COUNT(trip_id) AS trips_amount
FROM cabs INNER JOIN trips USING(cab_id)
WHERE 
    start_ts::date >='2017-11-01' 
    AND start_ts::date < '2017-11-08' AND
    (company_name LIKE '%Yellow%' OR company_name LIKE '%Blue%')
GROUP BY cabs.company_name;

/*
* 3.
* For November 1-7, 2017, the most popular taxi companies were Flash Cab and Taxi Affiliation Services. 
* Find the number of rides for these two companies and name the resulting variable trips_amount. 
* Join the rides for all other companies in the group "Other." Group the data by taxi company names. 
* Name the field with taxi company names company. Sort the result in descending order by trips_amount.
*/


SELECT
    CASE 
        WHEN company_name = 'Flash Cab' THEN 'Flash Cab' 
        WHEN company_name = 'Taxi Affiliation Services' THEN 'Taxi Affiliation Services' 
        ELSE 'Other' 
    END AS company,
    COUNT(trips.trip_id) as trips_amount                
FROM 
    cabs
INNER JOIN 
    trips 
ON 
    trips.cab_id = cabs.cab_id
WHERE 
    CAST(trips.start_ts AS date) BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY 
    company
ORDER BY 
    trips_amount DESC;

/*
* 4. Find out where rides most often end. Find the average daily number of drop-offs in each Chicago neighborhood in the month that we have data for (November 2017). Name the resulting field average_trips. To retrieve the names of the neighborhoods, use the name field from the neighborhoods table. Rename it as dropoff_location_name in the resulting table. Sort the result in descending order by average_trips. 
*/

SELECT name AS dropoff_location_name, AVG(cnt_amount) AS average_trips
FROM (SELECT name, extract('day' FROM end_ts) AS day, COUNT(*) cnt_amount
      FROM trips
               LEFT JOIN neighborhoods on trips.dropoff_location_id = neighborhoods.neighborhood_id
      GROUP BY name, extract('day' from end_ts)) as subq
GROUP BY name
ORDER BY average_trips DESC

/*
* 5.
* Retrieve the identifiers of the O'Hare and Loop neighborhoods from the neighborhoods table.
* From Hint - neighborhood_id and name
*/

SELECT neighborhood_id, name
FROM neighborhoods 
WHERE LOWER(name) like '%hare%' OR LOWER(name) like 'loop%' ;

/*
* 6. Retrieve from the trips table all the rides that started in the Loop (pickup_location_id: 50) on a Saturday and ended at O'Hare (dropoff_location_id: 63). Get the weather conditions for each ride. Use the method you applied in the previous task. Also, retrieve the duration of each ride. Ignore rides for which data on weather conditions is not available.
* The table columns should be in the following order:
* start_ts
* weather_conditions
* duration_seconds
* Sort by trip_id.
*/

select
    start_ts,
    weather_conditions,
    duration_seconds
from
    trips t join
    (
        select
            ts,
            case
                when (description ilike '%rain%' or description ilike '%storm%') then 'Bad' else 'Good' end weather_conditions
         from
             weather_records
          --where
           --  description is not null and description != ''
    ) w on t.start_ts = w.ts
 where
     extract(dow from start_ts::date) = 6
 and
     pickup_location_id = 50 and dropoff_location_id = 63
 order by
     trip_id