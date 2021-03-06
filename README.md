
# Cascade Assessment

## Project Design

I chose to use AWS Redshift to create and populate tables with data that is stored in an S3 bucket. I use the dbt Pattern of Source -> Staging -> Integration -> Marts to finally make the analytical views needed to answer the Carmen questions.  Below is the overall design of the database:

![image1.png](doc/image1.png)


## Entity Relation Diagram

<img src="https://jigsaw-sample-data-1.s3.amazonaws.com/Slide2.jpg"
     style="float: left; margin-right: 10px;" />
     
## dbt Docs can be found below:

*[Click Here](https://jigsaw-sample-data-1.s3.amazonaws.com/index.html)*
## Analytics Answers

#### a. For each month, which agency region is Carmen Sandiego most likely to be found?
|Month|City_Agent | Probability|
|----|----------|-----------|
|January |Kolkata |0.08|
|February |Kolkata |0.08|
|March|New York |0.08|
|April| New York| 0.08|
|May |New York |0.07|
June|New York |0.08|
|July |New York |0.08|
|August| New York|0.07|
|September|New York| 0.08|
|October |New York| 0.06|
|November | Kolkata| 0.07|
|December|New York |0.08|

#### b. Also for each month, what is the probability that Ms. Sandiego is armed AND wearing a jacket, but NOT a hat? What general observations about Ms. Sandiego can you make from this?

|Month |Probability|
|------|--------|
|January| 0.05|
|February |0.03|
| March |0.04|
 |April |0.04|
 |May |0.03|
|June |0.04|
|July |0.04|
|August |0.03|
 |September |0.05|
|October| 0.04|
|November |0.04|
 |December| 0.03|


#### c. What are the three most occuring behaviors of Ms. Sandiego?

##### 1. complaining 
##### 2. out-of-control 
##### 3. happy

#### d. For each month, what is the probability Ms. Sandiego exhibits one of her three most occurring behaviors?
|Month |Probability|
|--------|----|
|January |0.15|
|February |0.13|
 |March |0.15 |
|April |0.15|
|May |0.15|
|June |0.12|
 |July |0.15|
|August| 0.13|
|September |0.15 |
|October |0.13|
November| 0.14|
|December| 0.13|
