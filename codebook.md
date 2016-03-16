Original Feature Selection 
==========================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Feature after processing
========================

Subject
-------
The subject is a unique number identifying the person from whose smartphone these numbers were collected. There were 30 subjects for this experiment. Subject takes values from 1 to 30.


Activity
--------
Activity denotes the activity the subject was performing when the sample was taken. In the original experiment, activity was a number between 1 to 6. After analysis, the number was converted to a factor variable which takes following values:

    - WALKING
    - WALKING_UPSTAIR
    - WALKING_DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING


Features
--------

The original dataset contained 561 features which can be found in the original zip file. The processed data set contains only those features which contain std or mean in their name. The list is as follows:

     - tBodyAccmeanX
     - tBodyAccmeanY
     - tBodyAccmeanZ
     - tBodyAccstdX
     - tBodyAccstdY
     - tBodyAccstdZ
     - tGravityAccmeanX
     - tGravityAccmeanY
     - tGravityAccmeanZ
     - tGravityAccstdX
     - tGravityAccstdY
     - tGravityAccstdZ
     - tBodyAccJerkmeanX
     - tBodyAccJerkmeanY
     - tBodyAccJerkmeanZ
     - tBodyAccJerkstdX
     - tBodyAccJerkstdY
     - tBodyAccJerkstdZ
     - tBodyGyromeanX
     - tBodyGyromeanY
     - tBodyGyromeanZ
     - tBodyGyrostdX
     - tBodyGyrostdY
     - tBodyGyrostdZ
     - tBodyGyroJerkmeanX
     - tBodyGyroJerkmeanY
     - tBodyGyroJerkmeanZ
     - tBodyGyroJerkstdX
     - tBodyGyroJerkstdY
     - tBodyGyroJerkstdZ
     - tBodyAccMagmean
     - tBodyAccMagstd
     - tGravityAccMagmean
     - tGravityAccMagstd
     - tBodyAccJerkMagmean
     - tBodyAccJerkMagstd
     - tBodyGyroMagmean
     - tBodyGyroMagstd
     - tBodyGyroJerkMagmean
     - tBodyGyroJerkMagstd
     - fBodyAccmeanX
     - fBodyAccmeanY
     - fBodyAccmeanZ
     - fBodyAccstdX
     - fBodyAccstdY
     - fBodyAccstdZ
     - fBodyAccJerkmeanX
     - fBodyAccJerkmeanY
     - fBodyAccJerkmeanZ
     - fBodyAccJerkstdX
     - fBodyAccJerkstdY
     - fBodyAccJerkstdZ
     - fBodyGyromeanX
     - fBodyGyromeanY
     - fBodyGyromeanZ
     - fBodyGyrostdX
     - fBodyGyrostdY
     - fBodyGyrostdZ
     - fBodyAccMagmean
     - fBodyAccMagstd
     - fBodyBodyAccJerkMagmean
     - fBodyBodyAccJerkMagstd
     - fBodyBodyGyroMagmean
     - fBodyBodyGyroMagstd
     - fBodyBodyGyroJerkMagmean
     - fBodyBodyGyroJerkMagstd

The prefix 't' denotes time whereas 'f' denotes frequency. X, Y, Z are the axis along which the measurement is taken.