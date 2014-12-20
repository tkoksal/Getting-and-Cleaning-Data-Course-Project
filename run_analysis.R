### Load required libraries:
library(dplyr)

### 1. Merge training and test datasets to create one dataset:  ###

# Read the training dataset into an R data frame:
trainingData <- read.table("./UCI HAR Dataset/train/X_train.txt")

# Fetch variable names for the training dataset from 'features.txt' data
varnames <- read.table("./UCI HAR Dataset/features.txt") # first read the features.txt into a data frame
names(trainingData) <- varnames[ , 2] # since variable names are stored in the second variable

# Read the subjects/observations/cases pertaining the training dataset
subjectsTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(subjectsTrain)[1] <- "subject" # rename the first (and the only) variable as "subject"

# Read the activity type pertaining the training dataset
activityTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
names(activityTrain)[1] <- "activity" # rename the first (and the only) variable as "activity"

# Append the the subjects and acitivity variables to the training dataset
trainingData <- cbind(subjectsTrain, activityTrain, trainingData)

#====================================================

# Read the test dataset into an R data frame:
testData <- read.table("./UCI HAR Dataset/test/X_test.txt")

# Fetch variable names for the test dataset from 'features.txt' data
names(testData) <- varnames[ , 2] # since variable names are stored in the second variable

# Read the subjects/observations/cases pertaining the test dataset
subjectsTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
names(subjectsTest)[1] <- "subject" # rename the first (and the only) variable as "subject"

# Read the activity type pertaining the test dataset
activityTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
names(activityTest)[1] <- "activity" # rename the first (and the only) variable as "activity"

# Append the the subjects and acitivity variables to the test dataset
testData <- cbind(subjectsTest, activityTest, testData)

#=====================

# Finally we are ready to merge the training and test datasets

# Before we proceed, we need to add an additonal variable to both
# datasets, to keep track from which dataset the observations come from.

trainingData$trainortest <- "train" # recycles across all observations
testData$trainortest <- "test"      # recycles across all observations

# Now merge the train and test datasets
Data <- rbind(trainingData, testData)


### 2. Extracts only the measurements on the mean and standard deviation for ###
###     each measurement.                                                    ###

# Create a new subset data, which keeps only the variables on the mean and 
# standart deviation
subData <- Data[, grepl("subject", names(Data)) |
                  grepl("activity", names(Data)) |
                  grepl("trainortest", names(Data)) | 
                  grepl("mean", names(Data)) | 
                  grepl("std", names(Data))]

# Fine-tuning: remove variables that are unrelated with mean measures:
subData <- select(subData, -contains("meanFreq")) # use dplyr package

# Properly rename variable names and correct some typos
names(subData) <- gsub("-mean()-", "_mean_", names(subData), fixed = TRUE)
names(subData) <- gsub("-mean()", "_mean", names(subData), fixed = TRUE)
names(subData) <- gsub("-std()-", "_std_", names(subData), fixed = TRUE)
names(subData) <- gsub("-std()", "_std", names(subData), fixed = TRUE)
names(subData) <- gsub("BodyBody", "Body", names(subData), fixed = TRUE)

# Convert 'trainortest' into a factor variable
subData$trainortest <- factor(subData$trainortest, 
                              levels = c("train", "test"))

### 3. Uses descriptive activity names to name the activities in the data set ###

# Read the activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Attach activity labels to the corresponding activity types
subData$activity <- factor(subData$activity, levels = 1:6, 
                              labels = activityLabels[, 2])

# Reorder variables

subData <- select(subData, subject, activity, trainortest, 3:68)

### 4. Appropriately labels the data set with descriptive variable names. ###

# This was already done in step 2.

### 5. From the data set in step 4, creates a second, independent tidy data set ###
###    with the average of each variable for each activity and each subject. ###

# uses dplyr package
tidydata <- subData %>%
    group_by(subject, activity) %>%
    summarise_each(funs(mean))

# Add labels to trainortest variable which was distorted during transformation:

tidydata$trainortest <- factor(tidydata$trainortest, 
                               levels = 1:2, labels = c("train", "test"))

# Save/write the the tidy data as a .txt file to the working directory
write.table(tidydata, file = "tidydata.txt", row.names = FALSE)