library(reshape2)

### 1. Merges the training and the test sets to create one data set.

train_X_data <- read.table('UCI HAR Dataset/train/X_train.txt', colClasses='numeric')
test_X_data <- read.table('UCI HAR Dataset/test/X_test.txt', colClasses='numeric')

measures <- rbind(train_X_data, test_X_data)

train_y_data <- read.table('UCI HAR Dataset/train/y_train.txt', colClasses='integer')
test_y_data <- read.table('UCI HAR Dataset/test/y_test.txt', colClasses='integer')

activities <- rbind(train_y_data, test_y_data)

train_subject_data <- read.table('UCI HAR Dataset/train/subject_train.txt', colClasses='integer')
test_subject_data <- read.table('UCI HAR Dataset/test/subject_test.txt', colClasses='integer')

subjects <- rbind(train_subject_data, test_subject_data)

### 2. Extracts only the measurements on the mean and
###    standard deviation for each measurement.

features <- read.table('UCI HAR Dataset//features.txt',
                       col.names=c('colIndex', 'feature'),
                       stringsAsFactors=FALSE)

### grepl returns logical vector

features$is_mean_std <- grepl('(mean|std)\\(\\)',
                              features$feature,
                              perl=TRUE)

col_index_mean_std <- features[features$is_mean_std, ]$colIndex
measures <- measures[, col_index_mean_std]

### 4. Labeling the data set with descriptive
###    variable names. 

col_clean_names <- make.names(features[col_index_mean_std, ]$feature)
col_clean_names <- gsub('\\.+', '.', col_clean_names, perl=TRUE)
col_clean_names <- gsub('\\.+$', '', col_clean_names, perl=TRUE)

### exchanging position of XYZ and mean/std

col_clean_names <- sub('(mean|std)\\.([XYZ])',
                       '\\2.\\1',
                       col_clean_names,
                       perl=TRUE)

names(measures) <- col_clean_names
names(activities) <- c("activity_id")
names(subjects) <- c("subject")

###  Merges the training and the test sets to create one data set.

combined <- cbind(subjects, activities, measures)
combined <- melt(combined, id.vars=c("activity_id", "subject"))

### 3. Uses descriptive activity names to name the activities
###    in the data set.

activity_names <- read.table('UCI HAR Dataset//activity_labels.txt')
names(activity_names) <- c("activity_id", "activity_description")
combined <- merge(combined, activity_names, by="activity_id")

### 5. Creates a second, independent tidy data set with the average
###    of each variable for each activity and each subject.

tidy_average <- aggregate(combined['value'],
                       by=list(subject=combined$subject,
                               activity=combined$activity_description,
                               variable=combined$variable),
                       FUN=mean)
names(tidy_average) <- sub('value', 'average', names(tidy_average))

### writing second tidy data set

write.table(tidy_average, 'tidy_average.txt', row.names=FALSE)







