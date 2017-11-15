library(plyr)

### Load training and test data
activityLabelsFile <- "UCI_HAR_Dataset/activity_labels.txt"
activityLabels <- read.table(activityLabelsFile)

activityNamesFile <- "UCI_HAR_Dataset/features.txt"
activityNames <- as.character(read.table(activityNamesFile)$V2)

testDataFile <- "UCI_HAR_Dataset/test/X_test.txt" 
testSubjectFile <- "UCI_HAR_Dataset/test/subject_test.txt"
testLabelFile <- "UCI_HAR_Dataset/test/y_test.txt"

trainDataFile <- "UCI_HAR_Dataset/train/X_train.txt"
trainSubjectFile <- "UCI_HAR_Dataset/train/subject_train.txt"
trainLabelFile <- "UCI_HAR_Dataset/train/y_train.txt"

## read test and train data
test <- read.table(testDataFile)
train <- read.table(trainDataFile)
## add subject variable to test data
test$subject <- as.factor(read.table(testSubjectFile)$V1)
train$subject <- as.factor(read.table(trainSubjectFile)$V1)
## add activity label variable to data
test$activity <- as.factor(read.table(testLabelFile)$V1)
train$activity <- as.factor(read.table(trainLabelFile)$V1)

## merge data, use of "merge" function not necessary
## as both data sets contain records for the same exact set as variables
total <- rbind(test,train)

## update names 
names(total) <- c(activityNames,"subject","activity")

## map numeric activity labels to descriptive strings as given in the appropriate file
total$activity <- mapvalues(total$activity , from = activityLabels$V1, to = as.character(activityLabels$V2))

## extract only variables of mean and standard deviation 
## while keeping subject and label in place
total <- total[grepl("mean[^F]|std|activity|subject",names(total))]
nFeature <- ncol(total)-2

## create mean over label and subject
totalMean <- aggregate(total[1:nFeature], by=list(total$subject,total$activity) , FUN = mean)

## update labels clobbered by aggregate
totalMean <- dplyr::rename(totalMean, subject = Group.1, activity = Group.2)

write.csv(totalMean,file="tidy.csv")