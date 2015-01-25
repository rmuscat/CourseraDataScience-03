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
    + No dots
    + All lower case
    + Remove all column numbers preceded by "X"
        
 * Workout summary and save to file
    

### Column List ###
``` 
 activityname
 subjectid
 tbodyaccmeanx
 tbodyaccmeany
 tbodyaccmeanz
 tbodyaccstdx
 tbodyaccstdy
 tbodyaccstdz
 tgravityaccmeanx
 tgravityaccmeany
 tgravityaccmeanz
 tgravityaccstdx
 tgravityaccstdy
 tgravityaccstdz
 tbodyaccjerkmeanx
 tbodyaccjerkmeany
 tbodyaccjerkmeanz
 tbodyaccjerkstdx
 tbodyaccjerkstdy
 tbodyaccjerkstdz
 tbodygyromeanx
 tbodygyromeany
 tbodygyromeanz
 tbodygyrostdx
 tbodygyrostdy
 tbodygyrostdz
 tbodygyrojerkmeanx
 tbodygyrojerkmeany
 tbodygyrojerkmeanz
 tbodygyrojerkstdx
 tbodygyrojerkstdy
 tbodygyrojerkstdz
 tbodyaccmagmean
 tbodyaccmagstd
 tgravityaccmagmean
 tgravityaccmagstd
 tbodyaccjerkmagmean
 tbodyaccjerkmagstd
 tbodygyromagmean
 tbodygyromagstd
 tbodygyrojerkmagmean
 tbodygyrojerkmagstd
 fbodyaccmeanx
 fbodyaccmeany
 fbodyaccmeanz
 fbodyaccstdx
 fbodyaccstdy
 fbodyaccstdz
 fbodyaccmeanfreqx
 fbodyaccmeanfreqy
 fbodyaccmeanfreqz
 fbodyaccjerkmeanx
 fbodyaccjerkmeany
 fbodyaccjerkmeanz
 fbodyaccjerkstdx
 fbodyaccjerkstdy
 fbodyaccjerkstdz
 fbodyaccjerkmeanfreqx
 fbodyaccjerkmeanfreqy
 fbodyaccjerkmeanfreqz
 fbodygyromeanx
 fbodygyromeany
 fbodygyromeanz
 fbodygyrostdx
 fbodygyrostdy
 fbodygyrostdz
 fbodygyromeanfreqx
 fbodygyromeanfreqy
 fbodygyromeanfreqz
 fbodyaccmagmean
 fbodyaccmagstd
 fbodyaccmagmeanfreq
 fbodybodyaccjerkmagmean
 fbodybodyaccjerkmagstd
 fbodybodyaccjerkmagmeanfreq
 fbodybodygyromagmean
 fbodybodygyromagstd
 fbodybodygyromagmeanfreq
 fbodybodygyrojerkmagmean
 fbodybodygyrojerkmagstd
 fbodybodygyrojerkmagmeanfreq
```