DATA DICTIONARY - Data collected from the accelerometers from Samsung Galaxy S smartphone

This is the codebook for the Course Project for 'Getting and Cleaning Data' (Coursera)

Original data and full description of the original project is from,
    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Original data for the Course project,
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Once the data was unzipped into the working directory, I have done the following to fulfill the assignment:

-Merged the training and the test sets to create one data set.

-Extracted only the measurements on the mean and standard deviation for each measurement. 

-Used descriptive activity names to name the activities in the data set

-Appropriately labelled the data set with descriptive variable names. 

-Created a second, independent tidy data set (wide format, 180 obs. of 69 variables) 
    with the average of each variable for each activity and each subject. 
    
-To facilitate visualizing the data into a txt file, there is an additional code 
    to generate a long format version (11880 obs. of 5 variables).
    https://class.coursera.org/getdata-004/forum/thread?thread_id=262

Description of the column names in tidyData (output of run_analysis.R)

Group
    Two sets of volunteers
        TEST
        TRAIN

Subject
    Unique identifier of the volunteers
        1-30

Activity
    Activity performed by the volunteers during measurements
        LAYING
        SITTING
        STANDING
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS

The rest of the columns indicate the particular mean or standard deviation for different measurements (unitless)
    Abbreviation guide
       Acc: Acceleration
       f: frequency
       Gyro: Gyroscope
       Mag: Magnitude
       std: Standard Deviation
       t: time

        tBodyAcc-mean-X
        tBodyAcc-mean-Y 
        tBodyAcc-mean-Z
        tBodyAcc-std-X
        tBodyAcc-std-Y
        tBodyAcc-std-Z
        tGravityAcc-mean-X
        tGravityAcc-mean-Y
        tGravityAcc-mean-Z
        tGravityAcc-std-X
        tGravityAcc-std-Y
        tGravityAcc-std-Z
        tBodyAccJerk-mean-X
        tBodyAccJerk-mean-Y
        tBodyAccJerk-mean-Z
        tBodyAccJerk-std-X
        tBodyAccJerk-std-Y
        tBodyAccJerk-std-Z
        tBodyGyro-mean-X
        tBodyGyro-mean-Y
        tBodyGyro-mean-Z
        tBodyGyro-std-X
        tBodyGyro-std-Y
        tBodyGyro-std-Z
        tBodyGyroJerk-mean-X
        tBodyGyroJerk-mean-Y
        tBodyGyroJerk-mean-Z
        tBodyGyroJerk-std-X
        tBodyGyroJerk-std-Y
        tBodyGyroJerk-std-Z
        tBodyAccMag-mean
        tBodyAccMag-std
        tGravityAccMag-mean
        tGravityAccMag-std
        tBodyAccJerkMag-mean
        tBodyAccJerkMag-std
        tBodyGyroMag-mean
        tBodyGyroMag-std
        tBodyGyroJerkMag-mean
        tBodyGyroJerkMag-std
        fBodyAcc-mean-X
        fBodyAcc-mean-Y
        fBodyAcc-mean-Z
        fBodyAcc-std-X
        fBodyAcc-std-Y
        fBodyAcc-std-Z
        fBodyAccJerk-mean-X
        fBodyAccJerk-mean-Y
        fBodyAccJerk-mean-Z
        fBodyAccJerk-std-X
        fBodyAccJerk-std-Y
        fBodyAccJerk-std-Z
        fBodyGyro-mean-X
        fBodyGyro-mean-Y
        fBodyGyro-mean-Z
        fBodyGyro-std-X
        fBodyGyro-std-Y
        fBodyGyro-std-Z
        fBodyAccMag-mean
        fBodyAccMag-std
        fBodyBodyAccJerkMag-mean
        fBodyBodyAccJerkMag-std
        fBodyBodyGyroMag-mean
        fBodyBodyGyroMag-std
        fBodyBodyGyroJerkMag-mean
        fBodyBodyGyroJerkMag-std


   

    
