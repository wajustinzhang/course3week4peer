# course3week4peer

# Script run_analysis.R
This is the script used to generate the tidy dataset, the generated tidy data set is in file "tidydata.txt"

# How to run script, 
1) checkout source code to a local folder
2) Launch R (or R studio), setwd(localfolder)
3) In the R console, type: source("run_analysis.R"), it will generate the "tidydata.txt" in the same folder.
* 

# Details of the tidydata.txt
1) read data in R:
   tidy_data<-read.table("tidydata.txt")
   
2) Each observation (row data) in the tidy data set is average of each variable for each activity and each subject.

3) There are totally 81 variables as follows:

*  "subject"    ---- The subject No.
*  "activity_label"  -- The activity lable

Following are only the measurements on the mean and standard deviation for each measurement (defined from "features.txt")

*  "tBodyAcc-mean()-X"
*  "tBodyAcc-mean()-Y" 
*  "tBodyAcc-mean()-Z"  
*  "tBodyAcc-std()-X" 
*  "tBodyAcc-std()-Y" 
*  "tBodyAcc-std()-Z" 
*  "tGravityAcc-mean()-X" 
*  "tGravityAcc-mean()-Y" 
*  "tGravityAcc-mean()-Z"  
*  "tGravityAcc-std()-X"  
*  "tGravityAcc-std()-Y" 
*  "tGravityAcc-std()-Z"  
*  "tBodyAccJerk-mean()-X"  
*  "tBodyAccJerk-mean()-Y"  
*  "tBodyAccJerk-mean()-Z"  
*  "tBodyAccJerk-std()-X" 
*  "tBodyAccJerk-std()-Y"  
*  "tBodyAccJerk-std()-Z"  
*  "tBodyGyro-mean()-X" 
*  "tBodyGyro-mean()-Y" 
*  "tBodyGyro-mean()-Z" 
*  "tBodyGyro-std()-X" 
*  "tBodyGyro-std()-Y"   
*  "tBodyGyro-std()-Z"  
*  "tBodyGyroJerk-mean()-X" 
*  "tBodyGyroJerk-mean()-Y" 
*  "tBodyGyroJerk-mean()-Z" 
*  "tBodyGyroJerk-std()-X" 
*  "tBodyGyroJerk-std()-Y"  
*  "tBodyGyroJerk-std()-Z" 
*  "tBodyAccMag-mean()" 
*  "tBodyAccMag-std()" 
*  "tGravityAccMag-mean()"
*  "tGravityAccMag-std()" 
*  "tBodyAccJerkMag-mean()" 
*  "tBodyAccJerkMag-std()" 
*  "tBodyGyroMag-mean()"
*  "tBodyGyroMag-std()" 
*  "tBodyGyroJerkMag-mean()" 
*  "tBodyGyroJerkMag-std()" 
*  "fBodyAcc-mean()-X" 
*  "fBodyAcc-mean()-Y" 
*  "fBodyAcc-mean()-Z" 
*  "fBodyAcc-std()-X" 
*  "fBodyAcc-std()-Y" 
*  "fBodyAcc-std()-Z" 
*  "fBodyAcc-meanFreq()-X" 
*  "fBodyAcc-meanFreq()-Y"
*  "fBodyAcc-meanFreq()-Z" 
*  "fBodyAccJerk-mean()-X" 
*  "fBodyAccJerk-mean()-Y" 
*  "fBodyAccJerk-mean()-Z"
*  "fBodyAccJerk-std()-X"
*  "fBodyAccJerk-std()-Y"
*  "fBodyAccJerk-std()-Z"
*  "fBodyAccJerk-meanFreq()-X" 
*  "fBodyAccJerk-meanFreq()-Y"
*  "fBodyAccJerk-meanFreq()-Z" 
*  "fBodyGyro-mean()-X" 
*  "fBodyGyro-mean()-Y" 
*  "fBodyGyro-mean()-Z" 
*  "fBodyGyro-std()-X" 
*  "fBodyGyro-std()-Y" 
*  "fBodyGyro-std()-Z" 
*  "fBodyGyro-meanFreq()-X" 
*  "fBodyGyro-meanFreq()-Y"
*  "fBodyGyro-meanFreq()-Z" 
*  "fBodyAccMag-mean()" 
*  "fBodyAccMag-std()" 
*  "fBodyAccMag-meanFreq()"
*  "fBodyBodyAccJerkMag-mean()" 
*  "fBodyBodyAccJerkMag-std()"
*  "fBodyBodyAccJerkMag-meanFreq()"
*  "fBodyBodyGyroMag-mean()"
*  "fBodyBodyGyroMag-std()"
*  "fBodyBodyGyroMag-meanFreq()"
*  "fBodyBodyGyroJerkMag-mean()"
*  "fBodyBodyGyroJerkMag-std()"
*  "fBodyBodyGyroJerkMag-meanFreq()"
