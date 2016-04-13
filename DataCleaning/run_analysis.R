run_analysis <- function()
{

# directory where data files are stored
TestDataDir <- "C:/Syamala/Data Science/Lesson2/Lesson3/Data/"

#Read test data( data, activity, label files)
Testlabelsfile<- paste(TestDataDir ,"subject_Test.txt", sep="")
TestActivityfile <- paste(TestDataDir, "Y_Test.txt", sep="" )
TestDataFile <- paste(TestDataDir, "X_Test.txt", sep ="")

TestlabelData <- read.table( Testlabelsfile, header=FALSE, sep="")
TestActivityData <- read.table( TestActivityfile, header=FALSE, sep="")
TestActualData <- read.table( TestDataFile, header=FALSE, sep="")

#Read training data( data, activity, label files)
Trainlabelsfile<- paste(TestDataDir,"subject_Train.txt", sep="")
TrainActivityfile <- paste(TestDataDir, "Y_Train.txt", sep="" )
TrainDataFile <- paste(TestDataDir, "X_Train.txt", sep ="")

TrainlabelData <- read.table( Trainlabelsfile, header=FALSE, sep="")
TrainActivityData <- read.table( TrainActivityfile, header=FALSE, sep="")
TrainActualData <- read.table( TrainDataFile, header=FALSE, sep="")

# read features file
FeaturesFile <- paste(TestDataDir ,"features.txt", sep="")
FeaturesData <- read.table(FeaturesFile, header=FALSE, sep="")

# merge datasets into a single dataset
completedata <- rbind(TestActualData, TrainActualData)
CompleteLabelData <- rbind(TestlabelData, TrainlabelData)
CompleteActivityData <- rbind(TestActivityData, TrainActivityData)



names(completedata) <- FeaturesData[,2]

# extract only mean and standard deviation data
RequiredData <- completedata[, grep("-mean\\(\\)|-std\\(\\)", names(completedata))]

# add labels and activity data
RequiredData <- cbind(CompleteActivityData, RequiredData)
RequiredData <- cbind(CompleteLabelData, RequiredData)
names(RequiredData)[1] <- "Subject"
names(RequiredData)[2] <- "Activity"

FinalData <- aggregate(RequiredData[,3:68], by = list(RequiredData$Activity, RequiredData$Subject), FUN = mean)

names(FinalData)[1] <- "Subject"
names(FinalData)[2] <- "Activity"
# write the results to a text file
write.table(FinalData, file = "Results.txt",  sep = ",", row.names = FALSE)

}