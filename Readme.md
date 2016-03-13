Getting and Cleaning Data - Course Project
==========================================


Data
----

### Acquiring Data:
    The data was acquired from this [URL](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). This is a zip file containing various files. The description of the files can be found in the zip file itself in the readme file.







Description of the resultant dataset
------------------------------------
	The resultant data set contains following columns:
	* Subject
	* Activity
	* All the columns that contained mean or std in their names.
	

Steps
-----
1. Read the feature list from file: features.txt
2. Read the training dataset from files: subject_train.txt, X_train.txt and y_train.txt. The subject file contains the id of the subject while the y_train file contains the activity.
3. Repeat step 2 for test data as well
4. Merge the train data in one data frame - train_merged. Since all the 3 train dataframes are has same rows, this is possible
5. Repeat step 4 for test data set
6. Merge train and test data frames in a single data frame called merged.
7. Rename column names of merged data frame using the features list.
8. Convert the activity column to factors and get factor levels from file: activity_labels.txt
9. Select columns which as the word 'mean', 'Mean', 'std' or 'Std' in them
10. Take a subset of merged dataframe with columns obtained in step 9 and the Activity and Subject column.
11. Group by Activity and Subject columns and take mean across all the other columns.
12. Save the result in a file.