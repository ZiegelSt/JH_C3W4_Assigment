# Code book

The data for training and test records was read, and appropriate labels given. The two datasets were merged and the mean was taken, split by subject and activity. 

Furthermore for clarity the orginal data's numeric activity label were replaces with more
descriptive labales.

The resulting is saved in tidy.csv and data contains the following features

* subject
* activity
* 66 features correpsonding to those specified in the features.txt file relating
to mean or standard deviation

Each (numberes) row corresponds to one subjects mean values of the aforementioned 66 feature
for one of the activities specified in activity_label.txt