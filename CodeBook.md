##Codebook
========================== 

### Train Data
Train data were transformed into  data frame, train_data with 561 variables and 7352 observations
Test data were transformed into  data frame, test_data with 561 variables and 2947 observations
Train and test activities numbers were coded as factors, train_activities and test_activities (1-6)

### Subject Data
Subjects were coded as factors, train activities and test_activities (1-30)

### Activities Data
Activities were coded as data frame of two variables: "num" as factor (1-6) and "activity" as factor of 6 levels, WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING and LAYING
### Data merging
Train_data was transforemed into data frame, train1 with 562 variables by merging train_datat and train_activity
Train1 was transforemed into data frame, train2 with 563 variables by joining train2 and activities
Train3 is coded by dropping Column "num"
Combined train data is coded into dataframe, train with 563 variables by merging train3 and subject ("subject", "activity", "V1",...)
Test dataframe made same way
Train_data and test_data were combined into one dataframe, dataset with 563 variables and 10299 observations

### Features
Features were coded as factor, features with 477 levels "angle(tBodyAccJerkMean),gravityMean)",..
Being not unique, features were coded as character vector features3 with 561 unique values
Features were assigh as variables names in train_data and test_data

### Filtering mean and std measures
Dataset was transformed in tidy_dataset by filtering mean and standard deviation for each measure
Tidy_data set was summarized by subject and activity applying mean function to all variables.

### Results
Its resulting data frame, summary data set with 88 variables (mean and std for each mesurement) for each subject and each activity type(30 subjects*6 activities)

