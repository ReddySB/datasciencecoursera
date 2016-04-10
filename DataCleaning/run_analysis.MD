---
title: "Data Cleaning"
author: "Syamala"
date: "April 9, 2016"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

# This is codebook for getting and cleaning data assignment

run_analysis.R is r script file created to execute the project assignment for the getting and cleaning data.
The input data source URL is given "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
Data will be downloaded to the local working directory. This data has been segregated as sets (Test data, training data). This script is written to merge the data and do some calculations which are explained below.

# Main varibles names
TestDataDir - Local working directory where data has been stored

TestlabelData - dataset used for Test Subject data
TestActivityData - dataset used for Test activity data

TrainlabelData - dataset used for Training subject data
TrainActivityData - dataset used for Training activity data

body_x_acc_test, body_Y_acc_test, body_Z_acc_test - Datasets used for accelerometer test data
body_x_acc_train, body_y_acc_train, body_z_acc_train - Datasets used for accelerometer training data

body_x_gyro_test , body_y_gyro_test , body_z_gyro_test - Datasets used for gyroscope test data
body_x_gyro_train ,body_y_gyro_train ,body_z_gyro_train - Datasets used for gyroscope training data

body_x_total_test, body_y_total_test,body_z_total_test - Datasets used for total test data
body_x_total_train ,body_y_total_train ,body_z_total_train - Datasets used for total training data 

completedata - dataset used to merge all the dataset into a single dataset
finaldata - dataset used for the extrated subject, activity and mean and standard deviation values
TidyDataSet - dataset used to calculate the average of mean and SD by activity and subject wise

Mean - average of each row in the dataset
SD - Standard deviation of each row in the dataset
# ReadMe.txt explains the process