## Week 2 Homework

The goal of this homework is to familiarise users with workflow orchestration and observation. 


## Question 1. Load January 2020 data

Using the `etl_web_to_gcs.py` flow that loads taxi data into GCS as a guide, create a flow that loads the green taxi CSV dataset for January 2020 into GCS and run it. Look at the logs to find out how many rows the dataset has.

How many rows does that dataset have?

* 447,770

Because after executing the attached script `python etl_web_to_gcs_homework_q1.py` with the stated parameters, the logs tell us that:

```
rows: 447770
```


## Question 2. Scheduling with Cron

Cron is a common scheduling specification for workflows. 

Using the flow in `etl_web_to_gcs.py`, create a deployment to run on the first of every month at 5am UTC. What’s the cron schedule for that?

- `0 5 1 * *`


## Question 3. Loading data to BigQuery 

Using `etl_gcs_to_bq.py` as a starting point, modify the script for extracting data from GCS and loading it into BigQuery. This new script should not fill or remove rows with missing values. (The script is really just doing the E and L parts of ETL).

The main flow should print the total number of rows processed by the script. Set the flow decorator to log the print statement.

- 14,851,920

Because after executing the attached script `etl_gcs_to_bq_homework_q3.py` with the stated parameters, the logs tell us that:
```
rows: 7019375
rows: 7832545
```
Which sum 14851920.

## Question 4. Github Storage Block

Using the `web_to_gcs` script from the videos as a guide, you want to store your flow code in a GitHub repository for collaboration with your team. Prefect can look in the GitHub repo to find your flow code and read it. 

How many rows were processed by the script?

- 88,605

Because after executing the attached script `prefect_github_code/python etl_web_to_gcs_homework_q4.py` with the stated parameters, the logs tell us that:
```
rows: 88605
```

## Question 5. Email or Slack notifications

Q5. It’s often helpful to be notified when something with your dataflow doesn’t work as planned. Choose one of the options below for creating email or slack notifications.

Use a Prefect Cloud Automation or a self-hosted Orion server Notification to get notifications in a Slack workspace via an incoming webhook. 

Join my temporary Slack workspace with [this link](https://join.slack.com/t/temp-notify/shared_invite/zt-1odklt4wh-hH~b89HN8MjMrPGEaOlxIw). 400 people can use this link and it expires in 90 days. 

In the Prefect Cloud UI create an [Automation](https://docs.prefect.io/ui/automations) or in the Prefect Orion UI create a [Notification](https://docs.prefect.io/ui/notifications/) to send a Slack message when a flow run enters a Completed state. Here is the Webhook URL to use: https://hooks.slack.com/services/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

Test the functionality.

Alternatively, you can grab the webhook URL from your own Slack workspace and Slack App that you create. 


How many rows were processed by the script?

- `514,392`
```
rows: 514392
```

## Question 6. Secrets

Prefect Secret blocks provide secure, encrypted storage in the database and obfuscation in the UI. Create a secret block in the UI that stores a fake 10-digit password to connect to a third-party service. Once you’ve created your block in the UI, how many characters are shown as asterisks (*) on the next page of the UI?

- 8

Because the block shows `********`


