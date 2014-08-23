# CodeBook

code book for "tidy_average.txt" submitted in part 1 for Coursera course project

Original source data was retrieved from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Human Activity Recognition Using Smartphones Dataset
Version 1.0

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The original dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

## Variables

### Subjects

subject from 1-30

### Activities

  activity_id activity_description
1           1              WALKING
2           2     WALKING_UPSTAIRS
3           3   WALKING_DOWNSTAIRS
4           4              SITTING
5           5             STANDING
6           6               LAYING

### Measures

Prefix:
t: time domain signal
f: fast fourier transformed

Raw signal source instrument:
Acc: Accelerometer
Gyro: Gyroscope

Other attributes:
Jerk: measures derived in time
Mag: Euclidean norm magnitude of Jerk signals
X, Y, Z: axis of the feature
mean: Mean of the feature
std: Standard deviation of the feature

 [1] "tBodyAcc.X.mean"           "tBodyAcc.Y.mean"           "tBodyAcc.Z.mean"          
 [4] "tBodyAcc.X.std"            "tBodyAcc.Y.std"            "tBodyAcc.Z.std"           
 [7] "tGravityAcc.X.mean"        "tGravityAcc.Y.mean"        "tGravityAcc.Z.mean"       
[10] "tGravityAcc.X.std"         "tGravityAcc.Y.std"         "tGravityAcc.Z.std"        
[13] "tBodyAccJerk.X.mean"       "tBodyAccJerk.Y.mean"       "tBodyAccJerk.Z.mean"      
[16] "tBodyAccJerk.X.std"        "tBodyAccJerk.Y.std"        "tBodyAccJerk.Z.std"       
[19] "tBodyGyro.X.mean"          "tBodyGyro.Y.mean"          "tBodyGyro.Z.mean"         
[22] "tBodyGyro.X.std"           "tBodyGyro.Y.std"           "tBodyGyro.Z.std"          
[25] "tBodyGyroJerk.X.mean"      "tBodyGyroJerk.Y.mean"      "tBodyGyroJerk.Z.mean"     
[28] "tBodyGyroJerk.X.std"       "tBodyGyroJerk.Y.std"       "tBodyGyroJerk.Z.std"      
[31] "tBodyAccMag.mean"          "tBodyAccMag.std"           "tGravityAccMag.mean"      
[34] "tGravityAccMag.std"        "tBodyAccJerkMag.mean"      "tBodyAccJerkMag.std"      
[37] "tBodyGyroMag.mean"         "tBodyGyroMag.std"          "tBodyGyroJerkMag.mean"    
[40] "tBodyGyroJerkMag.std"      "fBodyAcc.X.mean"           "fBodyAcc.Y.mean"          
[43] "fBodyAcc.Z.mean"           "fBodyAcc.X.std"            "fBodyAcc.Y.std"           
[46] "fBodyAcc.Z.std"            "fBodyAccJerk.X.mean"       "fBodyAccJerk.Y.mean"      
[49] "fBodyAccJerk.Z.mean"       "fBodyAccJerk.X.std"        "fBodyAccJerk.Y.std"       
[52] "fBodyAccJerk.Z.std"        "fBodyGyro.X.mean"          "fBodyGyro.Y.mean"         
[55] "fBodyGyro.Z.mean"          "fBodyGyro.X.std"           "fBodyGyro.Y.std"          
[58] "fBodyGyro.Z.std"           "fBodyAccMag.mean"          "fBodyAccMag.std"          
[61] "fBodyBodyAccJerkMag.mean"  "fBodyBodyAccJerkMag.std"   "fBodyBodyGyroMag.mean"    
[64] "fBodyBodyGyroMag.std"      "fBodyBodyGyroJerkMag.mean" "fBodyBodyGyroJerkMag.std"





