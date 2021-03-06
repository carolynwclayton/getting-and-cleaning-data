---
title: "CodeBook"
author: "Carolyn Clayton"
date: "Sunday, January 25, 2015"
output: html_document
---

This describes the variables, the data, and any transformations performed to clean up the data.
  
# The Data:  
  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have beenvideo-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  
  
# Variables:  
  
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).   

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, and fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).   

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions (i.e. for names listing XYZ there are three variables in the dataset, one for each direction).  


tBodyAcc.mean.XYZ  
tBodyAcc.std.XYZ  
tGravityAcc.mean.XYZ  
tGravityAcc.std.XYZ  
tBodyAccJerk.mean.XYZ  
tBodyAccJerk.std.XYZ  
tBodyGyro.mean.XYZ  
tBodyGyro.std.XYZ  
tBodyGyroJerk.mean.XYZ  
tBodyGyroJerk.std.XYZ  
tBodyAccMag.mean  
tBodyAccMag.std  
tGravityAccMag.mean  
tGravityAccMag.std  
tBodyAccJerkMag.mean  
tBodyAccJerkMag.std  
tBodyGyroMag.mean  
tBodyGyroMag.std  
tBodyGyroJerkMag.mean  
tBodyGyroJerkMag.std  
fBodyAcc.mean.XYZ  
fBodyAcc.std.XYZ  
fBodyAccJerk.mean.XYZ  
fBodyAccJerk.std.XYZ  
fBodyGyro.mean.XYZ  
fBodyGyro.std.XYZ  
fBodyAccMag.mean  
fBodyAccMag.std  
fBodyBodyAccJerkMag.mean  
fBodyBodyAccJerkMag.std  
fBodyBodyGyroMag.mean  
fBodyBodyGyroMag.std  
fBodyBodyGyroJerkMag.mean  
fBodyBodyGyroJerkMag.std  
Subject (The ID number of the subject who performed the trial or test)  
Activity (levels = Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying)  

  
# The Tidying:  
  
Data was tidied from the original dataset by removing any variables that did not deal with mean or standard deviation, adding variable names, and adding levels to the Activity variable.
