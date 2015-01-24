---
title: "CodeBook.md"
author: "RM"
date: "18/01/2015"
output: html_document
---


###Data Cleaning Process###
The code is broken down into multipe sections

 * Load static data
    + Features (aka column names)
    + Activity Name (ActivityID,ActivityName)
 
 * Load All Test Data
    + Load Activity Table, replacing the ActivityID with the ActivityName [y_test.txt]
    + Load SubjectID per Experiment [subject_test.txt]
    + Load Sensor Data [X_test.txt]
    + Merge the three tables (assume the order is identical per experiment)
        
 * Load All Train Data
    + Load Activity Table, replacing the ActivityID with the ActivityName [y_train.txt]    
    + Load SubjectID per Experiment [subject_train.txt]    
    + Load Sensor Data  [X_train.txt]    
    + Merge the three tables (assume the order is identical per experiment)
              
 * Merge the data
 * Filter out the columns that match the following criteria,
    + SubjectID    
    + ActivityName    
    + All columns that contain the text "mean" or "std"
    
 * Rename all columns. Keep the original name but,
    + No duplicate "."    
    + Replace the X[ColumnNumber] default by the data frame library to C[ColumnNumber]. This will be handy if you want to revert back to the original dataset e.g. 552.fBodyBodyGyroJerkMag.meanFreq
        
 * Workout summary and save to file
    

### Column List ###
  
    SubjectID
    ActivityName
    C1.tBodyAcc.mean.X
    C2.tBodyAcc.mean.Y
    C3.tBodyAcc.mean.Z
    C4.tBodyAcc.std.X
    C5.tBodyAcc.std.Y
    C6.tBodyAcc.std.Z
    C41.tGravityAcc.mean.X
    C42.tGravityAcc.mean.Y
    C43.tGravityAcc.mean.Z
    C44.tGravityAcc.std.X
    C45.tGravityAcc.std.Y
    C46.tGravityAcc.std.Z
    C81.tBodyAccJerk.mean.X
    C82.tBodyAccJerk.mean.Y
    C83.tBodyAccJerk.mean.Z
    C84.tBodyAccJerk.std.X
    C85.tBodyAccJerk.std.Y
    C86.tBodyAccJerk.std.Z
    C121.tBodyGyro.mean.X
    C122.tBodyGyro.mean.Y
    C123.tBodyGyro.mean.Z
    C124.tBodyGyro.std.X
    C125.tBodyGyro.std.Y
    C126.tBodyGyro.std.Z
    C161.tBodyGyroJerk.mean.X
    C162.tBodyGyroJerk.mean.Y
    C163.tBodyGyroJerk.mean.Z
    C164.tBodyGyroJerk.std.X
    C165.tBodyGyroJerk.std.Y
    C166.tBodyGyroJerk.std.Z
    C201.tBodyAccMag.mean
    C202.tBodyAccMag.std
    C214.tGravityAccMag.mean
    C215.tGravityAccMag.std
    C227.tBodyAccJerkMag.mean
    C228.tBodyAccJerkMag.std
    C240.tBodyGyroMag.mean
    C241.tBodyGyroMag.std
    C253.tBodyGyroJerkMag.mean
    C254.tBodyGyroJerkMag.std
    C266.fBodyAcc.mean.X
    C267.fBodyAcc.mean.Y
    C268.fBodyAcc.mean.Z
    C269.fBodyAcc.std.X
    C270.fBodyAcc.std.Y
    C271.fBodyAcc.std.Z
    C294.fBodyAcc.meanFreq.X
    C295.fBodyAcc.meanFreq.Y
    C296.fBodyAcc.meanFreq.Z
    C345.fBodyAccJerk.mean.X
    C346.fBodyAccJerk.mean.Y
    C347.fBodyAccJerk.mean.Z
    C348.fBodyAccJerk.std.X
    C349.fBodyAccJerk.std.Y
    C350.fBodyAccJerk.std.Z
    C373.fBodyAccJerk.meanFreq.X
    C374.fBodyAccJerk.meanFreq.Y
    C375.fBodyAccJerk.meanFreq.Z
    C424.fBodyGyro.mean.X
    C425.fBodyGyro.mean.Y
    C426.fBodyGyro.mean.Z
    C427.fBodyGyro.std.X
    C428.fBodyGyro.std.Y
    C429.fBodyGyro.std.Z
    C452.fBodyGyro.meanFreq.X
    C453.fBodyGyro.meanFreq.Y
    C454.fBodyGyro.meanFreq.Z
    C503.fBodyAccMag.mean
    C504.fBodyAccMag.std
    C513.fBodyAccMag.meanFreq
    C516.fBodyBodyAccJerkMag.mean
    C517.fBodyBodyAccJerkMag.std
    C526.fBodyBodyAccJerkMag.meanFreq
    C529.fBodyBodyGyroMag.mean
    C530.fBodyBodyGyroMag.std
    C539.fBodyBodyGyroMag.meanFreq
    C542.fBodyBodyGyroJerkMag.mean
    C543.fBodyBodyGyroJerkMag.std
    C552.fBodyBodyGyroJerkMag.meanFreq