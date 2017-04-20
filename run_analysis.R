if(!require("data.table")) install.packages("data.table")
if(!require("dplyr")) install.packages("dplyr")

library(data.table)
library(dplyr)

run_analysis()

# Function to clean data into tidy data
run_analysis<-function() {
  #download data
  url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  temp <- tempfile()
  download.file(url, temp)
  
  #Read data
  activity_labels <- read.table(unzip(temp,"UCI HAR Dataset/activity_labels.txt"))[,2]
  features <- read.table(unzip(temp, "UCI HAR Dataset/features.txt"))[,2]
  
  subject_train <- read.table(unzip(temp, "UCI HAR Dataset/train/subject_train.txt"))
  subject_test <- read.table(unzip(temp, "UCI HAR Dataset/test/subject_test.txt"))
  names(subject_test) <-names(subject_train)<- "subject"
  
  # train /test file name (X,y)
  f_xtrain<-"UCI HAR Dataset/train/X_train.txt"
  f_ytrain<-"UCI HAR Dataset/train/y_train.txt"
  f_xtest<-"UCI HAR Dataset/test/X_test.txt"
  f_ytest<-"UCI HAR Dataset/test/y_test.txt"
  y_labels<-c("activity_id", "activity_label")
  
  #X_train
  xtrain <- read.table(unzip(temp, f_xtrain))
  names(xtrain) = features
  
  message("train data: Extracts only the measurements on the mean and standard deviation for each measurement.")
  xtrain <-xtrain[,grepl("mean|std", features)]
  
  #Y_train
  ytrain <- read.table(unzip(temp, f_ytrain))
  ytrain[,2] = activity_labels[ytrain[,1]]
  names(ytrain) = y_labels
  
  #combine subject, X_train, y_train
  xtrain <-cbind(subject_train,xtrain, select(ytrain, activity_label))
  
  #X_test
  xtest <- read.table(unzip(temp, f_xtest))
  names(xtest) = features
  
  message("test data: Extracts only the measurements on the mean and standard deviation for each measurement.")
  xtest <-xtest[,grepl("mean|std", features)]
  
  #y_test
  ytest<- read.table(unzip(temp, f_ytest))
  ytest[,2] = activity_labels[ytest[,1]]
  names(ytest) = y_labels
  
  #combine subject, X_test, y_test
  xtest <-cbind(subject_test, xtest, select(ytest, activity_label))
  
  # merge x_train and x_test
  message("Merges the training and the test sets to create one data set. ...")
  merged<-rbind(xtrain, xtest)
  
  message("create tidy data ...")
  tidy_data<-merged %>% group_by(subject, activity_label) %>% summarise_each(funs(mean))

  write.table(tidy_data, file = "./tidydata.txt")
}

