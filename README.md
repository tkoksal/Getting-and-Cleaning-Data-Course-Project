Getting-and-Cleaning-Data-Course-Project
=============================

## 1. Study Description

The data that we are going to process here belongs to a study on **Human Activity Recognition Using Smartphones**. The below quote is taken from the [study's website][1]. 

> #### Data Set Information:
>  
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
>    
> Check the README.txt file for further details about this dataset.
>    
> #### Attribute Information:
>   
> For each record in the dataset it is provided:
>
> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
> - Triaxial Angular velocity from the gyroscope. 
> - A 561-feature vector with time and frequency domain variables. 
> - Its activity label. 
> - An identifier of the subject who carried out the experiment.

[1]: https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## 2. Problem Statement

Firt of all, let's cite what we are expected to do for this assignment:

> You should create one R script called run_analysis.R that does the following:
> 
> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement.
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive variable names. 
> 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## 3. Step by Step Explanation on How the Final Independent Tidy Data Set was Derived

To begin with, [community TA David Hood's diagram][2] on how the data should be structured is a very useful one, and the procedure here to reach the final tidy dataset follows the structure of this diagram which is given below. 

![alt text][id]

[id]: diagram.png "Data Structure"
[2]: https://class.coursera.org/getdata-016/forum/thread?thread_id=50#comment-333

An R-script, `run_analysis.R` was created to do the above cited 5-step data manupulation process. What follows is a explanation of this R-script.   

### 1.Step: Merge the training and the test sets to create one data set.

The training and test datasets are stored as text files `X_train.txt` and `X_test.txt`, respectively.

Based on the above diagram, in order to merge the training and test datasets we first need to convert them into R-data frames. 

The training dataset set is read into an R-data frame using the `read.table()` function and assigned as `trainingData`.

> `trainingData <- read.table("./UCI HAR Dataset/train/X_train.txt")`

Variable names for the `trainingData` are fetched from `features.txt` file. In doing so, `features.txt` file is first read into an R-data frame and assigned as `varnames`.

> `varnames <- read.table("./UCI HAR Dataset/features.txt")`

Variables names, which are stored as the 2nd column of the `varnames` data frame, are attached as variable names for the `trainingData` using the `names()` function:

> `names(trainingData) <- varnames[ , 2] # since variable names are stored in the second variable`

Now, the `trainingData` has meaningful variable names. Next, for each observation of the training data we need attach the corresponding subject and the activity type the corresponding subject performs. These information are stored in `subject_train.txt` and `y_train.txt` files, respectively. These two files are first read into the following data frames `subjectsTrain` and `activityTrain`, respectively. Subsequently, these one-variable data frames are given meaningful variable names: `subject` and `activity`, respectively. 

```
# Read the subjects/observations/cases pertaining the training dataset
subjectsTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(subjectsTrain)[1] <- "subject" # rename the first (and the only) variable as "subject"

# Read the activity type pertaining the training dataset
activityTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
names(activityTrain)[1] <- "activity" # rename the first (and the only) variable as "activity"
```

Finally, we merge the following 3 data frames: `subjectsTrain`, `activityTrain`, and `trainingData` into one and assign it as the new `trainingData`.

```
# Append the the subjects and acitivity variables to the training dataset
trainingData <- cbind(subjectsTrain, activityTrain, trainingData)
```

Consequently, the `trainingData` has been attached with meaningful variable names (based on `features.txt`) as well as matched with the corresponding subjects and activity types (based on `subject_train.txt` and `y_train.txt`).

The same procedure as above was applied to the test dataset using the below code:

```
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
```

