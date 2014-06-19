## Course Project for 'Getting and Cleaning Data' (Coursera)

# You should create one R script called run_analysis.R that does the following. 
 
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Important info
# A 561-feature vector with time and frequency domain variables in 'X_test.txt'and 'X_train.txt' 
# Activity ID in 'y_test.txt' and 'y_train.txt' and labels in 'activity_labels.txt' 
# An identifier of the subject in 'subject_test.txt' and 'subject_train.txt'

# Packages needed
# install.packages("plyr")

# To clean up the Global Environment
# rm(list = ls())

# Combine the files in the test folder into the variable test
setwd("./test")
files_test <- list.files()
test <- do.call("cbind", lapply(files_test[c(2,4,3)],
        FUN=function(files){read.table(files, 
        header = F)}))
setwd("..")

# Add test column
test <- as.data.frame(append(test, "TEST", after = 0))
colnames(test)[1] <- "Group"

# Combine the files in the train folder into the variable train
setwd("./train")
files_train <- list.files()
train <- do.call("cbind", lapply(files_train[c(2,4,3)],
         FUN=function(files){read.table(files, 
         header = F)}))
setwd("..")

# Add train column
train <- as.data.frame(append(train, "TRAIN", after = 0))
colnames(train)[1] <- "Group"

# Combine the test and train data sets
mergedData <- rbind(test, train)

# Read the activity_labels.txt and features.txt files
activity <- read.table("activity_labels.txt")
activity <- as.character(activity[,2])

features <- read.table("features.txt")
features <- as.character(features[,2])

# Rename column names
colnames(mergedData)[2] <- "Subject"
colnames(mergedData)[3] <- "Activity"
colnames(mergedData)[4:564] <- features

# Rename activity labels
for (i in 1:6){
    mergedData[,3][mergedData[,3] == i] <- activity[i]
}

# Keep only the columns with 'mean' and 'std', plus 'Subject' and 'Activity'
dataMeanStd <- mergedData[ , grepl(paste(c("Group","Subject","Activity","mean","std"),collapse="|"), names(mergedData))]
dataMeanStd <- dataMeanStd[,!grepl("Freq", names(dataMeanStd))]
colnames(dataMeanStd)[4:69] <- gsub("()", "",colnames(dataMeanStd[4:69]),fixed = TRUE)

# create tidy data
library (plyr)
tidyData <- ddply(dataMeanStd ,.(Group,Subject,Activity),colwise(mean))

# Output
tidyData

########################################
##Generating txt file to submit
printout <- reshape(tidyData, 
             varying = colnames(tidyData[,4:69]), 
             v.names = "Mean",
             timevar = "Measurement", 
             times = colnames(tidyData[,4:69]), 
             new.row.names = 1:11880,
             direction = "long")

printout <- printout[,1:5] 
printout <- printout[order(printout$Group,printout$Subject,printout$Activity),]
rownames(printout) <- 1:11880
 
## Export tinyData as txt file
write.table(printout,"tidyData.txt",row.names=FALSE)

## Read tidyData.txt
tidyData2 <- read.table("tidyData.txt",header = TRUE)

