---
title: "Data Cleaning"
author: "Syamala"
date: "April 9, 2016"
output: html_document
---



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

TestActualData - - Dataset used to store test data
TrainActualData - - Dataset used to store training data

FeaturesData - Dataset used to store the features names

completedata - dataset used to merge all the dataset into a single dataset
CompleteLabelData - Dataset used to store merged label data
CompleteActivityData - Dataset used to store merged activity data
RequiredData - Dataset used to store extracted mean and standard deviation data

finaldata - dataset used to store aggreated data [tidy data]
# The following are the values extracted from the test and training data

tBodyAcc-mean()-X,tBodyAcc-mean()-Y,tBodyAcc-mean()-Z
tBodyAcc-std()-X,tBodyAcc-std()-Y,tBodyAcc-std()-Z
tGravityAcc-mean()-X,tGravityAcc-mean()-Y,tGravityAcc-mean()-Z
tGravityAcc-std()-X,tGravityAcc-std()-Y,tGravityAcc-std()-Z
tBodyAccJerk-mean()-X,tBodyAccJerk-mean()-Y,tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X,tBodyAccJerk-std()-Y,tBodyAccJerk-std()-Z
tBodyGyro-mean()-X,tBodyGyro-mean()-Y,tBodyGyro-mean()-Z
tBodyGyro-std()-X,tBodyGyro-std()-Y,tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X,tBodyGyroJerk-mean()-Y,tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X,tBodyGyroJerk-std()-Y,tBodyGyroJerk-std()-Z
tBodyAccMag-mean(),tBodyAccMag-std()
tGravityAccMag-mean(),tGravityAccMag-std()
tBodyAccJerkMag-mean(),tBodyAccJerkMag-std()
tBodyGyroMag-mean(),tBodyGyroMag-std()
tBodyGyroJerkMag-mean(),tBodyGyroJerkMag-std()
fBodyAcc-mean()-X,fBodyAcc-mean()-Y,fBodyAcc-mean()-Z
fBodyAcc-std()-X,fBodyAcc-std()-Y,fBodyAcc-std()-Z
fBodyAccJerk-mean()-X,fBodyAccJerk-mean()-Y,fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X,fBodyAccJerk-std()-Y,fBodyAccJerk-std()-Z
fBodyGyro-mean()-X,fBodyGyro-mean()-Y,fBodyGyro-mean()-Z
fBodyGyro-std()-X,fBodyGyro-std()-Y,fBodyGyro-std()-Z,fBodyAccMag-mean()
fBodyAccMag-std(),fBodyBodyAccJerkMag-mean(),fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean(),fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean(),fBodyBodyGyroJerkMag-std
# ReadMe.txt explains the process