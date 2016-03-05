# CodeBook for the tidy dataset

This codebook describes the dataset returned by the application. The codebook describes the name, type and possible value of the columns.

## Description

The subjectId contains the ID of the person participating in the test and/or training dataset.
The activityLabel is the classified value of the activityLabelId which resembles the kind of activity that took place.

The t* and f* columns resemble the mean or standard deviation of the measurements.

## Data transformations

The raw dataset has been transformed to:

* Have all the data in one file by merging the test and training datasets into one dataset.
* Assign readable column names to the measurements that have been performed by the subjects.
* Filter out all the (currently) unnecessary data (all columns other than columns that contained subjectId, activityLabel, *mean() or *std())
* Define or classify all the activities to a more readable format such as WALKING.

## Contents (variables of the data frame returned)

subjectId 				[numeric] Example: 30
activityLabel 			[character] Example: WALKING
tBodyAcc-mean()-X	 	[double] Example: -0.92805647
tBodyAcc-mean()-Y	 	[double] Example: -0.92805648
tBodyAcc-mean()-Z	 	[double] Example: -0.92805649
tBodyAcc-std()-X	 	[double] Example: -0.92805650
tBodyAcc-std()-Y	 	[double] Example: -0.92805651
tBodyAcc-std()-Z	 	[double] Example: -0.92805652
tGravityAcc-mean()-X	[double] Example: -0.92805653
tGravityAcc-mean()-Y	[double] Example: -0.92805654
tGravityAcc-mean()-Z	[double] Example: -0.92805655
tGravityAcc-std()-X		[double] Example: -0.92805656
tGravityAcc-std()-Y	 	[double] Example: -0.92805657
tGravityAcc-std()-Z	 	[double] Example: -0.92805658
tBodyAccJerk-mean()-X	[double] Example: -0.92805659
tBodyAccJerk-mean()-Y	[double] Example: -0.92805660
tBodyAccJerk-mean()-Z	[double] Example: -0.92805661
tBodyAccJerk-std()-X	[double] Example: -0.92805662
tBodyAccJerk-std()-Y	[double] Example: -0.92805663
tBodyAccJerk-std()-Z	[double] Example: -0.92805664
tBodyGyro-mean()-X		[double] Example: -0.92805665
tBodyGyro-mean()-Y		[double] Example: -0.92805666
tBodyGyro-mean()-Z		[double] Example: -0.92805667
tBodyGyro-std()-X		[double] Example: -0.92805668
tBodyGyro-std()-Y		[double] Example: -0.92805669
tBodyGyro-std()-Z		[double] Example: -0.92805670
tBodyGyroJerk-mean()-X	[double] Example: -0.92805671
tBodyGyroJerk-mean()-Y	[double] Example: -0.92805672
tBodyGyroJerk-mean()-Z	[double] Example: -0.92805673
tBodyGyroJerk-std()-X	[double] Example: -0.92805674
tBodyGyroJerk-std()-Y	[double] Example: -0.92805675
tBodyGyroJerk-std()-Z	[double] Example: -0.92805676
tBodyAccMag-mean()		[double] Example: -0.92805677
tBodyAccMag-std()	 	[double] Example: -0.92805678
tGravityAccMag-mean()	[double] Example: -0.92805679
tGravityAccMag-std()	[double] Example: -0.92805680
tBodyAccJerkMag-mean()	[double] Example: -0.92805681
tBodyAccJerkMag-std()	[double] Example: -0.92805682
tBodyGyroMag-mean()		[double] Example: -0.92805683
tBodyGyroJerkMag-mean()	[double] Example: -0.92805684
tBodyGyroJerkMag-std()	[double] Example: -0.92805685
fBodyAcc-mean()-X	 	[double] Example: -0.92805686
fBodyAcc-mean()-Y	 	[double] Example: -0.92805687
fBodyAcc-mean()-Z	 	[double] Example: -0.92805688
fBodyAcc-std()-X	 	[double] Example: -0.92805689
fBodyAcc-std()-Y	 	[double] Example: -0.92805690
fBodyAcc-std()-Z	 	[double] Example: -0.92805691
fBodyAccJerk-mean()-X	[double] Example: -0.92805692
fBodyAccJerk-mean()-Y	[double] Example: -0.92805693
fBodyAccJerk-mean()-Z	[double] Example: -0.92805694
fBodyAccJerk-std()-X	[double] Example: -0.92805695
fBodyAccJerk-std()-Y	[double] Example: -0.92805696
fBodyAccJerk-std()-Z	[double] Example: -0.92805697
fBodyGyro-mean()-X		[double] Example: -0.92805698
fBodyGyro-mean()-Y		[double] Example: -0.92805699
fBodyGyro-mean()-Z		[double] Example: -0.92805700
fBodyGyro-std()-X		[double] Example: -0.92805701
fBodyGyro-std()-Y		[double] Example: -0.92805702
fBodyGyro-std()-Z		[double] Example: -0.92805703
fBodyAccMag-mean()		[double] Example: -0.92805704
fBodyAccMag-std()		[double] Example: -0.92805705
fBodyBodyAccJerkMag-mean()	 [double] Example: -0.92805706
fBodyBodyAccJerkMag-std()	 [double] Example: -0.92805707
fBodyBodyGyroMag-mean()	[double] Example: -0.92805708
fBodyBodyGyroMag-std()	[double] Example: -0.92805709
fBodyBodyGyroJerkMag-mean()	 [double] Example: -0.92805710
fBodyBodyGyroJerkMag-std()	 [double] Example: -0.92805711