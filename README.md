Courseprogect getdata codebook
========================== 

Project for coursera getting and cleaning data course (getdata-016)

The data set used for this analisis: Human Activity Recognition Using Smartphones Dataset

Full description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

It can be downloaderd from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Analysis:
=========================================

Data is supposed to be your working directory

The script does the following:
* Creates two data sets for train and test data
* Merges them in one data set
* Names all variables in resulting data set with measures
* Filters mean and std variables for all measures
* Calculates mean for all the measures for each subject and activity
* Writes the resulting dataset





