#CodeBook

The Code Book is aimed to describe the variables, data, and transformations which have been made after the script run.

#The Data
Source of the input data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Description of the input data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The following files are included:

'README.txt'

'features_info.txt': Description of all features selected for the experiment.

'features.txt': List of all features

'activity_labels.txt': Links the class labels with their activity name

'train/X_train.txt': Training set

'train/y_train.txt': Training label ids

'test/X_test.txt': Test set

'test/y_test.txt': Test label ids

'subject_train.txt': Subject ids who performed the activity for each window sample. 

The Inertial Signals folders under test or train folders contain:

'total_acc_x_train.txt'/'total_acc_y_train.txt'/'total_acc_z_train.txt': The acceleration measurement from the smartphone accelerometer X/Y/Z axis.

'body_acc_x_train.txt'/'body_acc_y_train.txt'/'body_acc_z_train.txt': The body acceleration measurement obtained by subtracting the gravity from the total acceleration.

'body_gyro_x_train.txt'/'body_gyro_y_train.txt'/'body_gyro_z_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
