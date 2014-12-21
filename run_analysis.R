## dyplr package is used. please install using install.packages("dplyr")
library(dplyr)

## read train data
## read measures
train_data <- read.table("./train/X_train.txt", header=FALSE, sep="")
## read activities numbers
train_activities <- read.table("./train/Y_train.txt", header=FALSE, sep="")
## read subject data
subject_train<- read.table("./train/subject_train.txt", header=FALSE, sep="")

## read test data
## read measures
test_data <- read.table("./test/X_test.txt", header=FALSE, sep="")
## read activities numbers
test_activities <- read.table("./test/Y_test.txt", header=FALSE, sep="")
## read subject data
subject_test<- read.table("./test/subject_test.txt", header=FALSE, sep="")

##ACTIVITIES
## read activities names
activities<- read.table("./activity_labels.txt", header=FALSE, sep="")
## assign names to columns
names(activities)<- c("num", "activity")

## Creating train dataset
##change name in acivity df and subject df
names(train_activities)<- c("num")
names(subject_train)<- c("subject")
## merge activities and data
train1<- cbind(train_activities,train_data)
## add activity labels
train2<-inner_join(activities, train1, by="num")
## drop "num" column
train3<- select(train2,-matches("num"))
## create train dataset
train<- cbind(subject_train,train3)

## Creating test dataset
##change name in acivity df and subject df
names(test_activities)<- c("num")
names(subject_test)<- c("subject")
## merge activities and data
test1<- cbind(test_activities,test_data)
## add activity labels
test2<-inner_join(activities, test1, by="num")
## drop "num" column
test3<- select(test2,-matches("num"))
## create test dataset
test<- cbind(subject_test,test3)

## Create one dataset
dataset<- rbind(train,test)

## FEATURES
## read features names
features<- read.table("./features.txt", header=FALSE, sep="")
## leave second column only
features2<- features[[2]]
## there are duplications in the name set. make them unique
features3<- make.unique(as.character(features2))

## assign names to our dataset
names(dataset)<- c("subject","activity",features3)

## filter mean and standard deviation (std) columns
mean_set<- select(dataset, contains("mean"))
std_set<- select(dataset, contains("std"))

##combine mean and std datasets
tidy_dataset<- cbind(dataset[,c(1,2)],mean_set,std_set)

##create summary for each subject and activity
by<- group_by(tidy_dataset, subject, activity)
summary_data_set<-summarise_each(by,funs(mean))
## write dataset
write.table(summary_data_set,"summary_data_set.txt", row.name=FALSE)