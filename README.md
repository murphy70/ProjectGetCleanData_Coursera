# Course Project for 'Getting and Cleaning Data' (Coursera)

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

 Important info
 A 561-feature vector with time and frequency domain variables in 'X_test.txt'and 'X_train.txt' 
 Activity ID in 'y_test.txt' and 'y_train.txt' and labels in 'activity_labels.txt' 
 An identifier of the subject in 'subject_test.txt' and 'subject_train.txt'



