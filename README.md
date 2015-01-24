---
title: "README.md"
author: "RM"
date: "18/01/2015"
output: html_document
---

This is the run_analysis.R documention.

###Requirements###
Requirements are:

  * An unzipped copy of the UCI Smartphone Data

    + https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

  * run_analysis.R file from

    + https://github.com/rmuscat/CourseraDataScience-03

###Execution###

Required "tidydata" parameter is the filename of where to save the output file. It will be save in your working directory if it is not an absolute path.

If you don't want to set your working directory,
```
> source("run_analysis.R")
> run_analysis("tidydata.txt")
Joining by: ActivityID
Joining by: ActivityID
```
If you would rather set the working directory,

```
> source("run_analysis.R")
> getwd()
[1] "/home/rmuscat/"
> run_analysis("tidydata.txt","/home/rmuscat/Desktop/Coursera/03 Getting and Cleaning Data/UCI HAR Dataset)
Joining by: ActivityID
Joining by: ActivityID
```
