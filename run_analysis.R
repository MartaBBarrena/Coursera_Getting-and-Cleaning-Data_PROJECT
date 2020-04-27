# DOWNLOAD AND UNZIP DATASET

  #setwd("....../03 - Getting and cleaning data/Project")     If necesary

  #Downloading
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

  # Unzipping
unzip(zipfile="./data/Dataset.zip",exdir="./data")

# 1. MERGE THE TRAINING AND THE TEST SETS TO CREATE ONE DATA SET.

  # 1.1 Reading files: 

    # Train files
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

    #Test files
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

    # Features file
features <- read.table('./data/UCI HAR Dataset/features.txt')

    # Activity_labels file
activityLabels <- read.table('./data/UCI HAR Dataset/activity_labels.txt')

  # 1.2 Assigning column names:

colnames(x_train) <- features[,2]
colnames(y_train) <-"activityID"
colnames(subject_train) <- "subjectID"

colnames(x_test) <- features[,2] 
colnames(y_test) <- "activityID"
colnames(subject_test) <- "subjectID"

colnames(activityLabels) <- c('activityID','activityNAME')

  #1.3 Merging all data in one set:

merged_train <- cbind(subject_train,y_train, x_train)
merged_test <- cbind(subject_test, y_test, x_test)
merged_train_test <- rbind(merged_train, merged_test)

# 2. EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT.

  #2.1 Extract only columns SubjectID + ActivityID + all those with standard deviation and mean values.

column_names <- colnames(merged_train_test)
column_names_filtered <- (grepl("activityID" , column_names) | 
                            grepl("subjectID" , column_names) | 
                            grepl("mean.." , column_names) | 
                            grepl("std.." , column_names))

  #2.1 Create a new dataset only containing the extracted values 

mean_std_dataset <- setAllInOne[ , column_names_filtered == TRUE]

# 3. USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET

mean_std_dataset_WithActivityNames <- merge(mean_std_dataset, activityLabels,
                              by='activityID',
                              all.x=TRUE)

# 4. APPROPRIATELY LABEL THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES

  # Already done in previous steps.

# 5.	FROM THE DATA SET IN STEP 4, CREATES A SECOND, INDEPENDENT TIDY DATA SET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT.

  #5.1 Create a new tidy data set with the mean value for each variable by subjectID & activityID

NewTidySet <- aggregate(. ~subjectID + activityID, mean_std_dataset_WithActivityNames, mean)
NewTidySet <- NewTidySet[order(NewTidySet$subjectID, NewTidySet$activityID),]

  #5.2 Writing the new tidy data set in a txt file saved in the working directory

write.table(NewTidySet, "NewTidySet.txt", row.name=FALSE)
