Getting and Cleaning Data Course Project
========================================

Project Description
-------------------

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:

1. A tidy data set as described below

2. A link to a Github repository with your script for performing the analysis

3. A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md

4. A README.md in the repo with the scripts. This repo explains how all of the scripts work and how they are connected

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Relevant Tasks
--------------

Create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names. 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Repository Structure
--------------------

```{r}
- README.md: this file
- codebook.md: description of the data set and variables generated by run_analysis.R
- run_analysis.R: R script that collects and cleans the original data set
- finalTidyData.txt: the cleaned and tidied file generated by the script run_analysis.R
```

Running the script
------------------ 

The script run_analysis.R does not require any existing specific directory structure, as it creates a working directory on its own (namely, C:/UCI_HAR) and it directly downloads and unzips the data required for performing the analysis and generating the final tidy data set. Therefore, an Internet connection is required to download the original data files. If the data files were already downloaded and stored into the working directory, the script will analyse them without downloading again. 

Steps to run the script:
```{r}
1. Open the run_analysis.r script using RStudio or other R GUI.
2. Run the script. The first time it will last a bit longer while downloading the data files.
3. Alternatively, it can be run from the command line.
```

The output file with the cleaned and tidied data is called "finalTidyData.txt"

Script description
------------------

Although the code is thoroughly commented, following there are some additional explanations:

1. Checks and load packages that will be used. 

2. Create, if it does not exist yet, and set working directory at "C:/UCI_HAR".

3. If the data file "UCI_HAR_Dataset.zip" does not exist in the working directory, download it.

4. Unless it was already unzipped and read previously, unzip and read the required test and train files into appropiate data frames for each kind of data (that is, measures, activities, and subjects).

5. Join by rows train and test data frames for each kind of data.

6. Rename appropiately the columns for each data frame, extracting the valid names from the file "UCI HAR Dataset/features.txt"

7. Extract mean and standard deviation data and join them by column to the subject and activity data built in point 5.

8. Rename activities with their descriptive names, extracted from the file "UCI HAR Dataset/activity_labels.txt"

9. Rename variables with a descriptive name, substituting the abbreviation with the corresponding and meaningful identification

10. Melting and casting the data with the Mean and Standard Deviation variables from the joined data frame, so each subject and activity is aligned with its corresponding mean and standard deviation. 

11. Finally, the result is stored as the text file "finalTidyData.txt" without row names.
