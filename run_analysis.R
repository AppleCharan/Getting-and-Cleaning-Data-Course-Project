if(!file.exists("./Data"))
{
	dir.create("./Data")
}


fUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fUrl1,destfile="./Data/Dataset.zip")
unzip(zipfile="./Data/Dataset.zip",exdir="./Data")


train_text_A <- read.table("./Data/UCI HAR Dataset/train/X_train.txt")
train_text_B <- read.table("./Data/UCI HAR Dataset/train/y_train.txt")
test_text_Sbj <- read.table("./Data/UCI HAR Dataset/test/subject_test.txt")
test_text_A <- read.table("./Data/UCI HAR Dataset/test/X_test.txt")
test_text_B <- read.table("./Data/UCI HAR Dataset/test/y_test.txt")
train_text_Sbj <- read.table("./Data/UCI HAR Dataset/train/subject_train.txt")
collecting_features <- read.table('./Data/UCI HAR Dataset/features.txt')
collecting_ActivityLables = read.table('./Data/UCI HAR Dataset/activity_labels.txt')


colnames(train_text_A) <- collecting_features[,2]
colnames(train_text_B) <-"activityId"
colnames(train_text_Sbj) <- "subjectId"
colnames(test_text_A) <- collecting_features[,2] 
colnames(test_text_B) <- "activityId"
colnames(test_text_Sbj) <- "subjectId"
colnames(collecting_ActivityLables) <- c('activityId','activityType')


merging_train <- cbind(train_text_B, train_text_Sbj,train_text_A)
merging_test <- cbind(test_text_B, test_text_Sbj, test_text_A)
settingAllInOne <- rbind(merging_train, merging_test)

columnNames <- colnames(settingAllInOne)

mean_along_with_std <- (grepl("activityId" , columnNames) | 
						grepl("subjectId" , columnNames) | 
						grepl("mean.." , columnNames) | 
						grepl("std.." , columnNames)
)

settingForMeanAndStd <- settingAllInOne[ , mean_along_with_std == TRUE]
settingWithActivityNames <- merge(settingForMeanAndStd, collecting_ActivityLables, 
									by='activityId',
									all.x=TRUE)

Final_Tidy_Dataset <- aggregate(. ~subjectId + activityId + activityType , settingWithActivityNames, mean)
Final_Tidy_Dataset <- Final_Tidy_Dataset[order(Final_Tidy_Dataset$subjectId, Final_Tidy_Dataset$activityId),]

write.table(Final_Tidy_Dataset, "Final_Tidy_Dataset.txt", row.name=FALSE)
