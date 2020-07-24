# Getting-and-Cleaning-Data-Course-Project
Data Source:

Data for this project was obtain from the Coursera assignment instructions. Data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

Data for the project:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

Analysis File Description:

#In the run_analysis.R script, were recreated each step.

This file 'run_analysis.R' contains all the code to perform the analyses described in the 5 steps. They can be launched in RStudio by just importing the file.

About this R script

File with R code "run_analysis.R" perform work as mentioned by fcompleting the tasks:

Merging the training and the test sets to create one data set.
A). Reading files : Reading trainings tables, Reading testing tables, Reading feature vector, Reading activity labels
B).Assigning column names
C).Merging all data in one set
D).Extracting the measurements only on the basis of mean and standard deviation for each measurement : Reading column names, Creation of vector for defining ID, mean and standard deviation and finally Making nessesary subset from setAllInOne
E).Using descriptive activity names to name the activities in the data set
F).Appropriately labeling the data set with descriptive variable names
G).Creating a second, independent tidy data set with the average of each variable for each activity and each subject : Making second tidy data set and Writing second tidy data set in txt file
