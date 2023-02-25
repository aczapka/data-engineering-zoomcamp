## Week 4 Homework 


### Question 1: 

**What is the count of records in the model fact_trips after running all models with the test run variable disabled and filtering for 2019 and 2020 data only (pickup datetime)?**

- 61648442

Because, after running the dbt models in production, this query:
```
SELECT COUNT(*) FROM `adept-script-375707.production.fact_trips` 
WHERE pickup_datetime >= '2019-01-01 00:00:00 UTC' AND pickup_datetime < '2021-01-01 00:00:00 UTC';
``` 
returns `61634637`.

The models can be found in the `./dbt` directory of this repo.

### Question 2: 

**What is the distribution between service type filtering by years 2019 and 2020 data as done in the videos?**

- 89.9/10.1

![question2](https://user-images.githubusercontent.com/79663220/221374355-eb323c87-59ce-41e0-bfbe-659827d1716c.png)



### Question 3: 

**What is the count of records in the model stg_fhv_tripdata after running all models with the test run variable disabled (:false)?**

- 43244696

Because, after running the dbt models in production, this query:
```
SELECT COUNT(*) FROM `adept-script-375707.production.stg_fhv_tripdata` 
WHERE pickup_datetime >= '2019-01-01 00:00:00 UTC' AND pickup_datetime < '2020-01-01 00:00:00 UTC';
``` 
returns `43244696`.

The models can be found in the `./dbt` directory of this repo.

### Question 4: 

**What is the count of records in the model fact_fhv_trips after running all dependencies with the test run variable disabled (:false)?**

- 22998722

Because, after running the dbt models in production, this query:
```
SELECT COUNT(*) FROM `adept-script-375707.production.fact_fhv_trips` 
WHERE pickup_datetime >= '2019-01-01 00:00:00 UTC' AND pickup_datetime < '2020-01-01 00:00:00 UTC';
``` 
returns `22998722`.

The models can be found in the `./dbt` directory of this repo.

### Question 5: 

**What is the month with the biggest amount of rides after building a tile for the fact_fhv_trips table?**

- January

![question5](https://user-images.githubusercontent.com/79663220/221375688-2f672380-585f-45fc-b210-072d517a36bd.png)


