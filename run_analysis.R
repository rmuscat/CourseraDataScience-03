
#plyr for some rapid cool merging activity
library(plyr)


getFeatureNames <- function(featuresFile) {
  #Pull column names out from specified files
  readLines(featuresFile)
}

getActivityTable <- function(activityFile) {
  # pull the activity table, format "1 WALKING"
  read.table(file=activityFile,col.names=c("ActivityID","ActivityName"),)
}

getActivityDataTable <-function(activityDataFile,activityTable) {
  # get all the experimental data activity
  df <- read.table(file=activityDataFile,col.names=c("ActivityID"))
  # now join the tables to return the text and drop the id column
  arrange(join(df,activityTable),ActivityID)['ActivityName']
}

getSubjectTable <- function(subjectFile) {
  # The subject file is a text file of the subject running an experiment per line.
  read.table(file=subjectFile,col.names=c("SubjectID"))
}

readDataTable <- function(dataFile, columnsList) {
  #You need a column name list of 561 names here. You can get it from features.txt [getFeatureNames]
  read.table(file=dataFile,col.names=columnsList)
}

merge_UCIHAR <- function(subjectTable,activityTable,dataTable) {
  cbind(subjectTable,activityTable,dataTable)
}


run_analysis <- function(tidydata,wd=".") {
  # default working directory is current directory, else go to working directory
  setwd(wd)
  
  # 01 Merges the training and the test sets to create one data set.
  # get the fixed data
  featureNames <- getFeatureNames("features.txt")
  activityTable <- getActivityTable("activity_labels.txt")  

  # get, format and merge test data
  activityTestDataTable <- getActivityDataTable("test/y_test.txt",activityTable)
  subjectTestDataTable <- getSubjectTable("test/subject_test.txt")
  testDataTable <- readDataTable("test/X_test.txt",featureNames)
  testDF <- merge_UCIHAR(subjectTestDataTable,activityTestDataTable,testDataTable)

  # get, format and merge train data
  activityTrainDataTable <- getActivityDataTable("train/y_train.txt",activityTable)
  subjectTrainDataTable <- getSubjectTable("train/subject_train.txt")
  trainDataTable <- readDataTable("train/X_train.txt",featureNames)
  trainDF <- merge_UCIHAR(subjectTrainDataTable,activityTrainDataTable,trainDataTable)
  
  # M E R G E  'E M
  df <- rbind(trainDF,testDF) 

  # 02 Extracts only the measurements on the mean and standard deviation for each measurement.
  # Pull Column 1 (SubjectID), Column 2 (ActivityName), Any column name that matches "std" OR "mean"
  newColumns <- c(1,2,grep("std|mean",colnames(df)))
  df <- df[,newColumns]
  
  # 03 Uses descriptive activity names to name the activities in the data set
  # Done in 01, merging section. No further action required here.

  # 04 Appropriately labels the data set with descriptive variable names.
  # This is a little arbitrary so I'm doing the following
  # Remove all redundant "." separators and keep one so the columns are readable
  # Replace X for C meaning Column no in the original dataset
  
  # Created named vector for use in rename
  names(df) <- gsub("[.]+",".",tolower(colnames(df))) # lowercase, remove dup dots
  names(df) <- gsub("[.]$","",colnames(df)) # no dots at the end
  names(df) <- sub("^[x]","C",colnames(df)) # replace X with C
  #df <- rename(df,cleanCols)
  
  
  # 05 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
  mean_df <- ddply(df,.(activityname,subjectid),colwise(mean))
  write.table(mean_df,tidydata,row.name=FALSE)
  mean_df
}