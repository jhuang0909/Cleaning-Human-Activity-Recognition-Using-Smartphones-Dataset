## Load dplyr library
library(dplyr)

## Set work directory, assuming all raw data files are under ./UCI HAR Dataset
setwd(dir = "./UCI HAR Dataset")
rm(list = ls())

## Load test sets
testDataSet <- read.table("./test/X_test.txt")
str(testDataSet)

## Load features
features <- tolower((read.delim("./features.txt", header =  FALSE, sep = " ", stringsAsFactors = FALSE))$V2)

## Load activity labels
activities <- tolower((read.delim("./activity_labels.txt", header = FALSE, sep = " ", stringsAsFactors = FALSE))$V2)

## Rename variable names in testDataSet
colnames(testDataSet) <- features

## Add activity and subject columns
testDataSet$activity <- read.table("./test/y_test.txt")[[1]]
testDataSet$subject <- read.table("./test/subject_test.txt")[[1]]

## Load training sets
trainDataSet <- read.table("./train/X_train.txt")
str(trainDataSet)

## Rename variable names in testDataSet
colnames(trainDataSet) <- features

## Add activity and subject columns
trainDataSet$activity <- read.table("./train/y_train.txt")[[1]]
trainDataSet$subject <- read.table("./train/subject_train.txt")[[1]]

## Merges the training and the test sets to create one data set
entireDataSet <- rbind(testDataSet, trainDataSet)

## Extracts only the measurements on the mean and standard deviation for each measurement
targetMeasurements <- entireDataSet[, grep("-mean|-std|activity|subject",colnames(entireDataSet))]

## Uses descriptive activity names to name the activities in the data set
targetMeasurements$activity <- activities[targetMeasurements$activity]

## Appropriately labels the data set with descriptive variable names
colnames(targetMeasurements) <- gsub('^t','time',colnames(targetMeasurements))
colnames(targetMeasurements) <- gsub('^f','frequency',colnames(targetMeasurements))
colnames(targetMeasurements) <- gsub('acc','accelerometer',colnames(targetMeasurements))
colnames(targetMeasurements) <- gsub('gyro','gyroscope',colnames(targetMeasurements))

## Move subject and activity to the beginning of the columns
targetMeasurements <- targetMeasurements[c(81, 80, 1:79)]

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject
tidyDataSet <- targetMeasurements %>% group_by(activity, subject) %>% summarise_each(funs(mean))

## Output tidyDataSet
write.table(tidyDataSet, file = "tidyDataSet.txt", row.names = FALSE)