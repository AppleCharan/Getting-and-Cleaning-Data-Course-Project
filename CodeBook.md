The original data was transformed by

There, training and test sets are merged by creating one set of data. 
Extracting for each measurement only the measurements on mean and standard deviation. 
Use of descriptive names to name the activities in the data set 
The data set should be labeled appropriately with descriptive activity names. 
Creating a second, independent tidy data set for each activity and subject, with the average of each variable.

About R script

Merging the training and the test sets to create one data set. A). Reading files : Reading trainings tables, Reading testing tables, Reading feature vector, Reading activity labels B).Assigning column names C).Merging all data in one set D).Extracting the measurements only on the basis of mean and standard deviation for each measurement : Reading column names, Creation of vector for defining ID, mean and standard deviation and finally Making nessesary subset from setAllInOne E).Using descriptive activity names to name the activities in the data set F).Appropriately labeling the data set with descriptive variable names G).Creating a second, independent tidy data set with the average of each variable for each activity and each subject : Making second tidy data set and Writing second tidy data set in txt file

About variables:

train_text_A, train_text_B, test_text_A, test_text_B, train_text_Sbj and test_text_Sbj contain the data from the downloaded files.
collecting_features contains the correct names , which are applied to the column names stored in