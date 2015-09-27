#1 Merges the training and the test sets to create one data set.
#2 Extracts only the measurements on the mean and standard deviation for each measurement. 
#3 Uses descriptive activity names to name the activities in the data set
#4 Appropriately labels the data set with descriptive variable names. 
#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Note: Please, do not forget to set up a working directory using setwd() command and install required packages.

require("data.table")
require("reshape2")

# Loading data
Xtest<-read.table("./UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("./UCI HAR Dataset/test/y_test.txt")
subtest<-read.table("./UCI HAR Dataset/test/subject_test.txt")

# Loading labels
ftrs <- read.table("./UCI HAR Dataset/features.txt")[,2]
activityl <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
names(Xtest) = ftrs

ytest[,2] = activityl[ytest[,1]]
names(ytest) = c("Activity_ID", "Activity_Label")
names(subtest) = "subject"

# Extract only the measurements on the mean and standard deviation for each measurement.
extractf<-grepl("mean|std", ftrs)
Xtest = Xtest[,extractf]

# Binding data
testdata <- cbind(as.data.table(subtest), ytest, Xtest)

# Load and process X_train & y_train data.
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

names(Xtrain) = ftrs

# Extract only the measurements on the mean and standard deviation for each measurement.
Xtrain = Xtrain[,extractf]

# Loading activity data
ytrain[,2] = activityl[ytrain[,1]]
names(ytrain) = c("Activity_ID", "Activity_Label")
names(subtrain) = "subject"

# Binding data
traindata <- cbind(as.data.table(subtrain), ytrain, Xtrain)

# Merging test and train data
data = rbind(testdata, traindata)

datal = setdiff(colnames(data), c("subject", "Activity_ID", "Activity_Label"))
meltdata = melt(data, id = c("subject", "Activity_ID", "Activity_Label"), measure.vars = datal)

# Applying mean function to dataset using dcast function
cleandata   = dcast(meltdata, subject + Activity_Label ~ variable, mean)


# Writing down the data to *.txt file
write.table(cleandata, file="./clean_data.txt")

