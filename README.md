# README

The script run_analysis.R performs the following steps:
    
* Loads the data from file
* Introduces subject and activity as additional factor variable
* Merges the two data sets by appending the test set to the training set. 
no call to merge needed as the variables are identical 
* labels variables according to the content of features.txt
* uses grepl to subset the variables so that only the mean and std variables
are retained
*uses aggregate to copmute the mean of the remaining variables for each subject and 
activity. Subsquently relables.