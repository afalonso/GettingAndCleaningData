# Check and load packages
require("reshape", character.only=TRUE, quietly=TRUE)
library(reshape)


## 1. Merge the training and the test sets to create one data set.
# Set working directory
workingDirectory <- "C:/UCI_HAR"
if (file.exists(workingDirectory)) {
    setwd(file.path(workingDirectory))
} else {
    dir.create(file.path(workingDirectory))
    setwd(file.path(workingDirectory))    
}


# Download the file into the working directory
filename <- "UCI_HAR_Dataset.zip"
if (file.exists(filename)) {
    message("Download: Zip file already exists")
} else {
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(url, filename) #paste(localpath, file, sep = ""))
}


# Unzip and read the required test and train files
if (!exists("dfTestSubject")) {
    message("Unzipping and reading test files...")
    dfTestMeasure <- read.table(unz(filename, "UCI HAR Dataset/test/X_test.txt"), header = FALSE, colClasses="numeric")
    dfTestActivity <- read.table(unz(filename, "UCI HAR Dataset/test/y_test.txt"), header = FALSE, colClasses="integer")
    dfTestSubject <- read.table(unz(filename, "UCI HAR Dataset/test/subject_test.txt"), header = FALSE, colClasses="integer")
}

if (!exists("dfTrainSubject")) {
    message("Unzipping and reading train files...")
    dfTrainMeasure <- read.table(unz(filename, "UCI HAR Dataset/train/X_train.txt"), header = FALSE, colClasses="numeric")
    dfTrainActivity <- read.table(unz(filename, "UCI HAR Dataset/train/y_train.txt"), header = FALSE, colClasses="integer")
    dfTrainSubject <- read.table(unz(filename, "UCI HAR Dataset/train/subject_train.txt"), header = FALSE, colClasses="integer")
}


# Join train and test data tables
message("Joining train and test files...")
dfMeasure <- rbind(dfTrainMeasure, dfTestMeasure)
dfActivity <- rbind(dfTrainActivity, dfTestActivity)
dfSubject <- rbind(dfTrainSubject, dfTestSubject)


# Name the columns for each data table
message("Renaming columns...")
names(dfActivity) <- "activity"
names(dfSubject) <- "subject"
dfMeasureNames <- read.table(unz(filename, "UCI HAR Dataset/features.txt"), sep = " ")
measureNames <- as.character(dfMeasureNames[, 2])
names(dfMeasure) <- measureNames


# Extract mean and standard deviation data and bind them to the subject and activity data
message("Extracting mean and standard deviation...")
dfMeanStdMeasures <- dfMeasure[, grep("mean\\()|std\\()", measureNames)]
dfMeanStdData <- cbind(dfMeanStdMeasures, dfSubject, dfActivity)


# Rename activities with a descriptive name
message("Renaming activity and variable names...")
activityLabels <- read.table(unz(filename, "UCI HAR Dataset/activity_labels.txt"), header = FALSE, stringsAsFactors = FALSE)
dfMeanStdData$activity <- factor(dfMeanStdData$activity, levels = activityLabels[, 1], labels = activityLabels[, 2])


# Rename variables with a descriptive name
names(dfMeanStdData) <- gsub("Gyro", "Gyroscope", names(dfMeanStdData))
names(dfMeanStdData) <- gsub("Acc", "Acceleration", names(dfMeanStdData))
names(dfMeanStdData) <- gsub("^f", "Frequency", names(dfMeanStdData))
names(dfMeanStdData) <- gsub("^t", "Time", names(dfMeanStdData))


# Melting and casting the data with the Mean and Standard Deviation 
# variables from the joined data frame
message("Building and writing the final tidy data file...")
measures <- grep("mean|std", names(dfMeanStdData), value = TRUE)
moltenData <- melt(dfMeanStdData, id.vars = c("subject", "activity"), measure.vars = measures)
finalTidyData <- cast(moltenData, subject + activity ~ variable, mean)
write.table(finalTidyData, file = "finalTidyData.txt", row.names = FALSE)

