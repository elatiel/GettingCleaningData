# GettingCleaningData
Course Project

The task fo the project is to create tidy data using UCI HAR Dataset data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

For this purpose the following steps have to be done:

Create one R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3- Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject

#Instructions 

First, the data has to be loaded into UCI HAR Dataset folder. After one has to be sure to put the run_analysis.R into the project folder and set a working directory
by setwd() command. Then run_analysis.R file has to be run. It uses data.table and reshape2 packages. The result file with tidy data is clean_data.txt.

