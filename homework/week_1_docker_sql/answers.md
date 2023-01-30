## Week 1 Homework


## Question 1. Knowing docker tags

Run the command to get information on Docker 

```docker --help```

Now run the command to get help on the "docker build" command

Which tag has the following text? - *Write the image ID to the file* 

- `--iidfile string`

Because is one of the rows if you execute:

```docker build --help```

## Question 2. Understanding docker first run 

Run docker with the python:3.9 image in an interactive mode and the entrypoint of bash.
How many python packages/modules are installed?

- 3

Because if you run:

```docker run -it --entrypoint=bash python:3.9```
```pip list```

The output is:

```
Package    Version
---------- -------
pip        22.0.4
setuptools 58.1.0
wheel      0.38.4
```

# Prepare Postgres

First, run docker with the database:
```
cd ~/data-engineering-zoomcamp/week_1_basics_n_setup/2_docker_sql
docker-compose up -d
```

Then, open Jupyter Notebook and populate the database:
```
jupyter notebook
```

The modified version of the notebook used is attached as `upload-data.ipynb`.

After executing it, perform the queries attached in `queries.sql` in pgli to find the answers to the questions:
```
pgcli -h localhost -U root -d ny_taxi
```

## Question 3. Count records 

How many taxi trips were totally made on January 15?

- 20530


## Question 4. Largest trip for each day

Which was the day with the largest trip distance

- 2019-01-15


## Question 5. The number of passengers

In 2019-01-01 how many trips had 2 and 3 passengers?
 
- 2: 1282 ; 3: 254


## Question 6. Largest tip

For the passengers picked up in the Astoria Zone which was the drop off zone that had the largest tip?

- Long Island City/Queens Plaza


