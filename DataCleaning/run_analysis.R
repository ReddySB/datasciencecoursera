 
run_analysis <- function()
{
  
  completedata <- data.frame()
  TestDataDir <- "C:/Syamala/Data Science/Lesson2/Lesson3/Data/"
  
  #Read all files from test directory
  
  Testlabelsfile<- paste(TestDataDir ,"subject_Test.txt", sep="")
  TestActivityfile <- paste(TestDataDir, "Y_Test.txt", sep="" )
  
  TestlabelData <- read.table( Testlabelsfile, header=FALSE, sep="")
  TestActivityData <- read.table( TestActivityfile, header=FALSE, sep="")
  
  Trainlabelsfile<- paste(TestDataDir,"subject_Train.txt", sep="")
  TrainActivityfile <- paste(TestDataDir, "Y_Train.txt", sep="" )
  
  TrainlabelData <- read.table( Trainlabelsfile, header=FALSE, sep="")
  TrainActivityData <- read.table( TrainActivityfile, header=FALSE, sep="")
  
  # merging training data with test data (accelorometer x)
  
  filename <- paste(TestDataDir, "body_acc_x_test.txt", sep ="")
  body_x_acc_test <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_x_acc_test, rowMeans(body_x_acc_test, na.rm = TRUE))
  body_x_acc_test <- cbind(Mean, apply(body_x_acc_test,1, sd))
  
  
  filename <- paste(TestDataDir, "body_acc_x_train.txt", sep ="")
  body_x_acc_train <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_x_acc_train, rowMeans(body_x_acc_train, na.rm = TRUE))
  body_x_acc_train <- cbind(Mean, apply(body_x_acc_train,1, sd))
  
  
  body_x_acc_test <- cbind(TestlabelData,body_x_acc_test)
  body_x_acc_test <- cbind(TestActivityData,body_x_acc_test)
  
  body_x_acc_train <- cbind(TrainlabelData,body_x_acc_train)
  body_x_acc_train <- cbind(TrainActivityData,body_x_acc_train)
  
  
  # merging training data with test data (accelorometer y)
  
  filename <- paste(TestDataDir, "body_acc_y_test.txt", sep ="")
  body_y_acc_test <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_y_acc_test, rowMeans(body_y_acc_test, na.rm = TRUE))
  body_y_acc_test <- cbind(Mean, apply(body_y_acc_test,1, sd))
  
  
  filename <- paste(TestDataDir, "body_acc_y_train.txt", sep ="")
  body_y_acc_train <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_y_acc_train, rowMeans(body_y_acc_train, na.rm = TRUE))
  body_y_acc_train <- cbind(Mean, apply(body_y_acc_train,1, sd))
  
  
  body_y_acc_test <- cbind(TestlabelData,body_y_acc_test)
  body_y_acc_test <- cbind(TestActivityData,body_y_acc_test)
  
  body_y_acc_train <- cbind(TrainlabelData,body_y_acc_train)
  body_y_acc_train <- cbind(TrainActivityData,body_y_acc_train)
  
  
  # merging training data with test data (accelorometer z)
  
  filename <- paste(TestDataDir, "body_acc_z_test.txt", sep ="")
  body_z_acc_test <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_z_acc_test, rowMeans(body_z_acc_test, na.rm = TRUE))
  body_z_acc_test <- cbind(Mean, apply(body_z_acc_test,1, sd))
  
  
  filename <- paste(TestDataDir, "body_acc_z_train.txt", sep ="")
  body_z_acc_train <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_z_acc_train, rowMeans(body_z_acc_train, na.rm = TRUE))
  body_z_acc_train <- cbind(Mean, apply(body_z_acc_train,1, sd))
  
  
  body_z_acc_test <- cbind(TestlabelData,body_z_acc_test)
  body_z_acc_test <- cbind(TestActivityData,body_z_acc_test)
  
  body_z_acc_train <- cbind(TrainlabelData,body_z_acc_train)
  body_z_acc_train <- cbind(TrainActivityData,body_z_acc_train)
  
  
  
  
  
  # merging training data with test data (gyrometer x)
  
  filename <- paste(TestDataDir, "body_gyro_x_test.txt", sep ="")
  body_x_gyro_test <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_x_gyro_test, rowMeans(body_x_gyro_test, na.rm = TRUE))
  body_x_gyro_test <- cbind(Mean, apply(body_x_gyro_test,1, sd))
  
  
  filename <- paste(TestDataDir, "body_gyro_x_train.txt", sep ="")
  body_x_gyro_train <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_x_gyro_train, rowMeans(body_x_gyro_train, na.rm = TRUE))
  body_x_gyro_train <- cbind(Mean, apply(body_x_gyro_train,1, sd))
  
  
  body_x_gyro_test <- cbind(TestlabelData,body_x_gyro_test)
  body_x_gyro_test <- cbind(TestActivityData,body_x_gyro_test)
  
  body_x_gyro_train <- cbind(TrainlabelData,body_x_gyro_train)
  body_x_gyro_train <- cbind(TrainActivityData,body_x_gyro_train)
  
  
  
  # merging training data with test data (gyrometer x)
  
  filename <- paste(TestDataDir, "body_gyro_y_test.txt", sep ="")
  body_y_gyro_test <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_y_gyro_test, rowMeans(body_y_gyro_test, na.rm = TRUE))
  body_y_gyro_test <- cbind(Mean, apply(body_y_gyro_test,1, sd))
  
  
  filename <- paste(TestDataDir, "body_gyro_y_train.txt", sep ="")
  body_y_gyro_train <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_y_gyro_train, rowMeans(body_y_gyro_train, na.rm = TRUE))
  body_y_gyro_train <- cbind(Mean, apply(body_y_gyro_train,1, sd))
  
  
  body_y_gyro_test <- cbind(TestlabelData,body_y_gyro_test)
  body_y_gyro_test <- cbind(TestActivityData,body_y_gyro_test)
  
  body_y_gyro_train <- cbind(TrainlabelData,body_y_gyro_train)
  body_y_gyro_train <- cbind(TrainActivityData,body_y_gyro_train)
  
  # merging training data with test data (gyrometer x)
  
  filename <- paste(TestDataDir, "body_gyro_z_test.txt", sep ="")
  body_z_gyro_test <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_z_gyro_test, rowMeans(body_z_gyro_test, na.rm = TRUE))
  body_z_gyro_test <- cbind(Mean, apply(body_z_gyro_test,1, sd))
  
  
  filename <- paste(TestDataDir, "body_gyro_z_train.txt", sep ="")
  body_z_gyro_train <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_z_gyro_train, rowMeans(body_z_gyro_train, na.rm = TRUE))
  body_z_gyro_train <- cbind(Mean, apply(body_z_gyro_train,1, sd))
  
  
  body_z_gyro_test <- cbind(TestlabelData,body_z_gyro_test)
  body_z_gyro_test <- cbind(TestActivityData,body_z_gyro_test)
  
  body_z_gyro_train <- cbind(TrainlabelData,body_z_gyro_train)
  body_z_gyro_train <- cbind(TrainActivityData,body_z_gyro_train)
  
  
  # merging training data with test data (total_acc_x_test x)
  
  
  filename <- paste(TestDataDir, "total_acc_x_test.txt", sep ="")
  body_x_total_test <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_x_total_test, rowMeans(body_x_total_test, na.rm = TRUE))
  body_x_total_test <- cbind(Mean, apply(body_x_total_test,1, sd))
  
  
  filename <- paste(TestDataDir, "total_acc_x_train.txt", sep ="")
  body_x_total_train <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_x_total_train, rowMeans(body_x_total_train, na.rm = TRUE))
  body_x_total_train <- cbind(Mean, apply(body_x_total_train,1, sd))
  
  
  body_x_total_test <- cbind(TestlabelData,body_x_total_test)
  body_x_total_test <- cbind(TestActivityData,body_x_total_test)
  
  body_x_total_train <- cbind(TrainlabelData,body_x_total_train)
  body_x_total_train <- cbind(TrainActivityData,body_x_total_train)
  
  
  # merging training data with test data (total_acc_x_test x)
  
  
  filename <- paste(TestDataDir, "total_acc_y_test.txt", sep ="")
  body_y_total_test <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_y_total_test, rowMeans(body_y_total_test, na.rm = TRUE))
  body_y_total_test <- cbind(Mean, apply(body_y_total_test,1, sd))
  
  
  filename <- paste(TestDataDir, "total_acc_y_train.txt", sep ="")
  body_y_total_train <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_y_total_train, rowMeans(body_y_total_train, na.rm = TRUE))
  body_y_total_train <- cbind(Mean, apply(body_y_total_train,1, sd))
  
  
  body_y_total_test <- cbind(TestlabelData,body_y_total_test)
  body_y_total_test <- cbind(TestActivityData,body_y_total_test)
  
  body_y_total_train <- cbind(TrainlabelData,body_y_total_train)
  body_y_total_train <- cbind(TrainActivityData,body_y_total_train)
  
  
  # merging training data with test data (total_acc_x_test x)
  
  
  filename <- paste(TestDataDir, "total_acc_z_test.txt", sep ="")
  body_z_total_test <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_z_total_test, rowMeans(body_z_total_test, na.rm = TRUE))
  body_z_total_test <- cbind(Mean, apply(body_z_total_test,1, sd))
  
  
  filename <- paste(TestDataDir, "total_acc_z_train.txt", sep ="")
  body_z_total_train <- read.table(filename, header=FALSE, sep="")
  Mean <- cbind(body_z_total_train, rowMeans(body_z_total_train, na.rm = TRUE))
  body_z_total_train <- cbind(Mean, apply(body_z_total_train,1, sd))
  
  
  body_z_total_test <- cbind(TestlabelData,body_z_total_test)
  body_z_total_test <- cbind(TestActivityData,body_z_total_test)
  
  body_z_total_train <- cbind(TrainlabelData,body_z_total_train)
  body_z_total_train <- cbind(TrainActivityData,body_z_total_train)
  
  
  names(body_x_acc_test)[131] <- "MeanVal"
  names(body_x_acc_test)[132] <- "SD"
  names(body_x_acc_train)[131] <- "MeanVal"
  names(body_x_acc_train)[132] <- "SD"
  
  names(body_y_acc_test)[131] <- "MeanVal"
  names(body_y_acc_test)[132] <- "SD"
  names(body_y_acc_train)[131] <- "MeanVal"
  names(body_y_acc_train)[132] <- "SD"
  
  
  names(body_z_acc_test)[131] <- "MeanVal"
  names(body_z_acc_test)[132] <- "SD"
  names(body_z_acc_train)[131] <- "MeanVal"
  names(body_z_acc_train)[132] <- "SD"
  
  names(body_x_gyro_test)[131] <- "MeanVal"
  names(body_x_gyro_test)[132] <- "SD"
  names(body_x_gyro_train)[131] <- "MeanVal"
  names(body_x_gyro_train)[132] <- "SD"
  
  names(body_y_gyro_test)[131] <- "MeanVal"
  names(body_y_gyro_test)[132] <- "SD"
  names(body_y_gyro_train)[131] <- "MeanVal"
  names(body_y_gyro_train)[132] <- "SD"
  
  names(body_z_gyro_test)[131] <- "MeanVal"
  names(body_z_gyro_test)[132] <- "SD"
  names(body_z_gyro_train)[131] <- "MeanVal"
  names(body_z_gyro_train)[132] <- "SD"
  
  names(body_x_total_test)[131] <- "MeanVal"
  names(body_x_total_test)[132] <- "SD"
  names(body_x_total_train)[131] <- "MeanVal"
  names(body_x_total_train)[132] <- "SD"
  
  
  names(body_y_total_test)[131] <- "MeanVal"
  names(body_y_total_test)[132] <- "SD"
  names(body_y_total_train)[131] <- "MeanVal"
  names(body_y_total_train)[132] <- "SD"
  
  
  names(body_z_total_test)[131] <- "MeanVal"
  names(body_z_total_test)[132] <- "SD"
  names(body_z_total_train)[131] <- "MeanVal"
  names(body_z_total_train)[132] <- "SD"
  
  
  
  completedata <- rbind(completedata, body_x_acc_test)
  completedata <- rbind(completedata, body_x_acc_train)
  completedata <- rbind(completedata, body_y_acc_test)
  completedata <- rbind(completedata, body_y_acc_train)
  completedata <- rbind(completedata, body_z_acc_test)
  completedata <- rbind(completedata, body_z_acc_train)
  
  completedata <- rbind(completedata, body_x_gyro_test)
  completedata <- rbind(completedata, body_x_gyro_train)
  completedata <- rbind(completedata, body_y_gyro_test)
  completedata <- rbind(completedata, body_y_gyro_train)
  completedata <- rbind(completedata, body_z_gyro_test)
  completedata <- rbind(completedata, body_z_gyro_train)
  
  completedata <- rbind(completedata, body_x_total_test)
  completedata <- rbind(completedata, body_x_total_train)
  completedata <- rbind(completedata, body_y_total_test)
  completedata <- rbind(completedata, body_y_total_train)
  completedata <- rbind(completedata, body_z_total_test)
  completedata <- rbind(completedata, body_z_total_train)
  
  
  # append the  readings with subject and activities
  
  
  finaldata <- data.frame(completedata[1], completedata[2], completedata[131], completedata[132])
  
  names(finaldata)[1] <- "Subject"
  names(finaldata)[2] <- "Activity"
  
  # Average of the each measurement by activity and subject   
  TidyDataSet <- aggregate(finaldata[, 3:4], list(finaldata$Activity, finaldata$Subject), mean)
  
  
  names(TidyDataSet)[1] <- "Subject"
  names(TidyDataSet)[2] <- "Activity"
  names(TidyDataSet)[3] <- "Mean Average"
  names(TidyDataSet)[4] <- "SD Average"
  
  
  head(TidyDataSet, n=5)
  
}