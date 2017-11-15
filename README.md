# README

The script run_analysis.R performs the following steps:
    
* Loads the data from file
* Introduces subject and activity as additional factor variable
* Merges the two data sets by appending the test set to the training set. 
NO call to merge is needed as the features of training and test are identical.
* features are labelled according to the content of features.txt
* mapvalues functions is used to change factor levels of activity feature from numeric to
descriptive character
* uses grepl to subset the variables so that only features relating to  mean and standar deviation
are retained
* uses aggregate to compute the mean of the remaining variables for each subject and 
activity. Subsquently relables the label that were clobberd by aggregate
