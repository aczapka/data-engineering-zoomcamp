--Question 3
select count(*) from green_taxi_data where lpep_pickup_datetime >= '2019-01-15 00:00' and lpep_pickup_datetime < '2019-01-16 00:00' and 
lpep_dropoff_datetime >= '2019-01-15 00:00' and lpep_dropoff_datetime < '2019-01-16 00:00';

--Question 4
select * from green_taxi_data order by trip_distance desc limit 1;

--Question 5
select passenger_count, count(*) from green_taxi_data where lpep_pickup_datetime >= '2019-01-01 00:00' and 
lpep_pickup_datetime < '2019-01-02 00:00' group by passenger_count;

--Question 6
select "Zone" from zones where "LocationID" = (select "DOLocationID" from green_taxi_data where "PULocationID" = (
	select "LocationID" from zones where "Zone" = 'Astoria'
) group by "DOLocationID" order by max(tip_amount) desc limit 1);
