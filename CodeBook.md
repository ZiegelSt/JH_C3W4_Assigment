# Code book

## The original data
The file tidy.csv provides mean data for the combined test and training data of the dataset on 
user activity measured by smartphones. The original data and its documentation are available at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
with further documentation at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## The tidy data
In addition of the features of the reference provided the subject (in form of an ID) and
the activity (in the form of a self explanatory string) are given

## The records
Each (numbered) row corresponds to one subjects mean values of the 66 features described below
for one of the activities specified in activity_label.txt. There are 180 records

## Features
The 68 features stored in tidy.csv are ( with the latter 66 corresponding to those of the original data that record
data w.r.t the mean and standard deviation, for units consult the original documentation)

* subject
* activity
* tbodyacc_mean_x
* tbodyacc_mean_y
* tbodyacc_mean_z
* tbodyacc_std_x
* tbodyacc_std_y
* tbodyacc_std_z
* tgravityacc_mean_x
* tgravityacc_mean_y
* tgravityacc_mean_z
* tgravityacc_std_x
* tgravityacc_std_y
* tgravityacc_std_z
* tbodyaccjerk_mean_x
* tbodyaccjerk_mean_y
* tbodyaccjerk_mean_z
* tbodyaccjerk_std_x
* tbodyaccjerk_std_y
* tbodyaccjerk_std_z
* tbodygyro_mean_x
* tbodygyro_mean_y
* tbodygyro_mean_z
* tbodygyro_std_x
* tbodygyro_std_y
* tbodygyro_std_z
* tbodygyrojerk_mean_x
* tbodygyrojerk_mean_y
* tbodygyrojerk_mean_z
* tbodygyrojerk_std_x
* tbodygyrojerk_std_y
* tbodygyrojerk_std_z
* tbodyaccmag_mean
* tbodyaccmag_std
* tgravityaccmag_mean
* tgravityaccmag_std
* tbodyaccjerkmag_mean
* tbodyaccjerkmag_std
* tbodygyromag_mean
* tbodygyromag_std
* tbodygyrojerkmag_mean
* tbodygyrojerkmag_std
* fbodyacc_mean_x
* fbodyacc_mean_y
* fbodyacc_mean_z
* fbodyacc_std_x
* fbodyacc_std_y
* fbodyacc_std_z
* fbodyaccjerk_mean_x
* fbodyaccjerk_mean_y
* fbodyaccjerk_mean_z
* fbodyaccjerk_std_x
* fbodyaccjerk_std_y
* fbodyaccjerk_std_z
* fbodygyro_mean_x
* fbodygyro_mean_y
* fbodygyro_mean_z
* fbodygyro_std_x
* fbodygyro_std_y
* fbodygyro_std_z
* fbodyaccmag_mean
* fbodyaccmag_std
* fbodybodyaccjerkmag_mean
* fbodybodyaccjerkmag_std
* fbodybodygyromag_mean
* fbodybodygyromag_std
* fbodybodygyrojerkmag_mean
* fbodybodygyrojerkmag_std

