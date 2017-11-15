# Code book

The file tidy.csv provides mean data for the combined test and training data of the dataset on 
user activity measured by smartphones. The original data and its documentation are available at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
with further documentation at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for training and test records was read, and appropriate labels are given. The two datasets were merged and the mean was taken, split by subject and activity. 

Furthermore for clarity the orginal data's numeric activity label were replaces with more
descriptive labales.

Thus the features stored in tidy.csv are

* subject
* activity
* 66 features correpsonding to those specified in the features.txt file relating
to mean or standard deviation

Each (numberes) row corresponds to one subjects mean values of the aforementioned 66 feature
for one of the activities specified in activity_label.txt
