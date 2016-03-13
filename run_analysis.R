# run_analysis.R
#
# Solution to Course Project
#
# I have first created seperate data frames for test and training data sets.
# Then I merged the test and training datasets into respective single data frame viz
# 'merged_train' and 'merged_test'
# After this, I merged the training and test dataframes into a single data frame.
# Next, this new 'merged' data frame was added proper column names
# Also, the numbers in activity column was converted to factors and the levels of the
# factors were taken from activity_labels file so they have human readable names.
# This was the cleaning phase
#
# Later, I took a subset from the merged data frame whose column contained 'mean' or 'std'
# words in them.
# Now mean by activity and mean by subject was taken in two seperate tables.
#

library(dplyr)

#Clear all the variables
rm(list = ls())

# Read the feature list
feature_list = read.csv('features.txt', sep='', header = FALSE)
names(feature_list) = c('FeatureId', 'FeatureName')

# Read the training data
train_subject = read.csv('train/subject_train.txt', sep = '', header = FALSE)
train_x = read.csv('train/X_train.txt', sep = '', header = FALSE)
train_y = read.csv('train/y_train.txt', sep = '', header = FALSE)

# Read the test data
test_subject = read.csv('test/subject_test.txt', sep = '', header = FALSE)
test_x = read.csv('test/X_test.txt', sep = '', header = FALSE)
test_y = read.csv('test/y_test.txt', sep = '', header = FALSE)

# Merge x, y and subject of both the datasets in respective data frames

train_merged = data.frame(train_subject, train_y, train_x)
test_merged = data.frame(test_subject, test_y, test_x)


# Merge test and train data into a single data frame
merged = rbind(test_merged, train_merged)
header = c('Subject', 'Activity', as.character(feature_list$FeatureName))
names(merged) = header
# Rename activity
activity = read.csv('activity_labels.txt', sep = '', header = FALSE)
merged$Activity = as.factor(merged$Activity)
levels(merged$Activity) = activity$V2

# Cleanup
rm(test_subject, test_x, test_y, train_subject, train_y, train_x, test_merged, train_merged)
rm(feature_list)

# Now we have a data frame containing all the observations, subject and activity id
# at one place. Ready to process.

# Subset which contains only Mean and Std Dev of observation
columns = grep("[Mm]ean|[sS]td", names(merged))
columns = as.numeric(append(c("1", "2"), columns)) # Don't want to miss the important things
merged_subset = merged[,columns]


# Grouping and taking means
res = merged_subset %>%group_by(Activity, Subject) %>% summarise_each(funs(mean))

# Save the file
write.table(res, file='res.csv', sep=",")

# End
