## STEP 1: Import the Data

# Refer to the readme file for info on where to obtain the dataset and where to save it.

Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
SubjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
Ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
SubjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
Features <- read.table("./UCI HAR Dataset/features.txt")
ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Build the database

X <- rbind(Xtrain, Xtest)
colnames(X) <- Features$V2  # Assign variable names to X
Subject <- rbind(SubjectTrain, SubjectTest)
colnames(Subject) <- "Subject"
Activity <- rbind(Ytrain, Ytest)
colnames(Activity) <- "Activity"
data <- cbind(X, Subject, Activity)  # Build full database


## STEP 2: Subset the measurement Mean and STD columns. I have also kept the Subject and Activity columns in the dataset because they are not measurement variables. Variables with Mean earlier in the variable name were excluded because, per the features_info.txt file, they were computed by averaging the signals in a signal window sample, and did not seem to be direct means of the measurements, as requested in the project guidelines.

dataSubset <- data[, grep("-mean\\(\\)|-std\\(\\)|Subject|Activity", colnames(data), value = TRUE)]


## STEP 3: Label the Activities
dataSubset$Activity <- factor(dataSubset$Activity, 
                                levels = c(1, 2, 3, 4, 5, 6),
                                labels = c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))


## STEP 4: Rename the variables to more descriptive names.
colnames(dataSubset) <- gsub("\\(\\)", "", colnames(dataSubset))
colnames(dataSubset) <- gsub("-", ".", colnames(dataSubset))


## STEP 5: Create a tidy data set with the average of each variable fo reach activity and each subject.

# Compute averages
library(dplyr)
order <- group_by(dataSubset, Subject, Activity)
TidyData <- summarise_each(order, funs(mean))

# Write the table to a file
write.table(TidyData, file = "./TidyData.txt", row.names = FALSE)
