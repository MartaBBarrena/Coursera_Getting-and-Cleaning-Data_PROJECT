# **Getting and Cleaning Data Course Project**

## **Data description**

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.

The data set used to carry out the present project belongs as a part of the study "Human Activity Recognition Using Smartphones Data Set" (*).

Detailed description on the study, as well as corresponding data set, can be found on the following website:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To summarize, it could be said that the project dataset correspond to a collection of data collected from a group of 30 volunteers, each one of which was asked to perform a total of six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist in order to capture data related to 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz by means of the system embedded accelerometer and gyroscope.

The obtained dataset appears randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

# **Variables description**

### Identifiers

- subjectID: numeric code which identifies the code which links the class labels with their activity name (1-30).
- activityID: numeric code which links the class labels with their activity name (1-6)

Activity

- activityNAME: name of the activity performed

### Measurements

- tBodyAccMeanX
- tBodyAccMeanY
- tBodyAccMeanZ
- tBodyAccStdX
- tBodyAccStdY
- tBodyAccStdZ
- tGravityAccMeanX
- tGravityAccMeanY
- tGravityAccMeanZ
- tGravityAccStdX
- tGravityAccStdY
- tGravityAccStdZ
- tBodyAccJerkMeanX
- tBodyAccJerkMeanY
- tBodyAccJerkMeanZ
- tBodyAccJerkStdX
- tBodyAccJerkStdY
- tBodyAccJerkStdZ
- tBodyGyroMeanX
- tBodyGyroMeanY
- tBodyGyroMeanZ
- tBodyGyroStdX
- tBodyGyroStdY
- tBodyGyroStdZ
- tBodyGyroJerkMeanX
- tBodyGyroJerkMeanY
- tBodyGyroJerkMeanZ
- tBodyGyroJerkStdX
- tBodyGyroJerkStdY
- tBodyGyroJerkStdZ
- tBodyAccMagMean
- tBodyAccMagStd
- tGravityAccMagMean
- tGravityAccMagStd
- tBodyAccJerkMagMean
- tBodyAccJerkMagStd
- tBodyGyroMagMean
- tBodyGyroMagStd
- tBodyGyroJerkMagMean
- tBodyGyroJerkMagStd
- fBodyAccMeanX
- fBodyAccMeanY
- fBodyAccMeanZ
- fBodyAccStdX
- fBodyAccStdY
- fBodyAccStdZ
- fBodyAccMeanFreqX
- fBodyAccMeanFreqY
- fBodyAccMeanFreqZ
- fBodyAccJerkMeanX
- fBodyAccJerkMeanY
- fBodyAccJerkMeanZ
- fBodyAccJerkStdX
- fBodyAccJerkStdY
- fBodyAccJerkStdZ
- fBodyAccJerkMeanFreqX
- fBodyAccJerkMeanFreqY
- fBodyAccJerkMeanFreqZ
- fBodyGyroMeanX
- fBodyGyroMeanY
- fBodyGyroMeanZ
- fBodyGyroStdX
- fBodyGyroStdY
- fBodyGyroStdZ
- fBodyGyroMeanFreqX
- fBodyGyroMeanFreqY
- fBodyGyroMeanFreqZ
- fBodyAccMagMean
- fBodyAccMagStd
- fBodyAccMagMeanFreq
- fBodyBodyAccJerkMagMean
- fBodyBodyAccJerkMagStd
- fBodyBodyAccJerkMagMeanFreq
- fBodyBodyGyroMagMean
- fBodyBodyGyroMagStd
- fBodyBodyGyroMagMeanFreq
- fBodyBodyGyroJerkMagMean
- fBodyBodyGyroJerkMagStd
- fBodyBodyGyroJerkMagMeanFreq

## **Tranformations performed**

The original dataset was transformed by mean of the different steps required in order to complete the assignment.

1. Merging the training and the test sets to create one data set.
2. Extraction of those measurements on the mean and standard deviation for each measurement.
3. Using descriptive activity names to name the activities in the data set
4. Appropriately labeling the data set with descriptive variable names.
5. Creating a second independent and tidy dataset, which only includes the average of each variable for each activity and each subject.

* Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
