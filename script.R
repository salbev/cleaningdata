##Getting and cleaning data, course project
##Samsung Smartphone activity data from:http://archive.ics.uci.edu/ml/datasets
##/Human+Activity+Recognition+Using+Smartphones

##Part 1: reading the data 
if(!file.exists("./data")){dir.create("./data")}
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20
HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/assign4data.zip", mode="wb")

##Part2: Unzipping the data
unzip(zipfile = "./data/assign4data.zip", exdir = "./data")
newpath = file.path("./data", "UCI HAR Dataset")
files = list.files(newpath, recursive=TRUE)

##REading the data in, first section deals with Train data, the test data
##files
xtrainin<- read.table(file.path(newpath, "train", "X_train.txt"),header = FALSE)
ytrainin<- read.table(file.path(newpath, "train", "y_train.txt"),header = FALSE)
subjecttrainin<- read.table(file.path(newpath, "train", "subject_train.txt"),
                            header = FALSE)
xtestin<- read.table(file.path(newpath, "test", "X_test.txt"),header = FALSE)
ytestin<- read.table(file.path(newpath, "test", "y_test.txt"),header = FALSE)
subjecttestin<- read.table(file.path(newpath, "test", "subject_test.txt")
                           ,header = FALSE)
featuresin<- read.table(file.path(newpath, "features.txt"),header = FALSE)
activitylabelsin<- read.table(file.path(newpath, "activity_Labels.txt"),
                              header = FALSE)

##putting the column names into the test, train, activity and subject files
colnames(xtrainin) = featuresin[,2]
colnames(ytrainin) = "activityId"
colnames(subjecttrainin) = "subjectId"
colnames(xtestin) = featuresin[,2]
colnames(ytestin) = "activityId"
colnames(subjecttestin) = "subjectId"
colnames(activitylabelsin) <-c("activityId", "activityType")

##merging the test and the training tables
trainin<-cbind(xtrainin, ytrainin, subjecttrainin)
testin<-cbind(xtestin, ytestin, subjecttestin)
allin<-rbind(testin, trainin)
 
##extracting the mean and standard deviation for each measurement from the 
##large dataset (allin)
allinMS <- select(allin, contains(c("subjectId", "activityId", "mean()", 
                                    "std()")))

##Tidying the column names
names(allinMS)<-gsub("Acc", "Accelerometer", names(allinMS))
names(allinMS)<-gsub("Gyro", "Gyroscope", names(allinMS))
names(allinMS)<-gsub("Mag", "Magnitude", names(allinMS))
names(allinMS)<-gsub("BodyBody", "Body", names(allinMS))
names(allinMS)<-gsub("^t", "Time", names(allinMS))
names(allinMS)<-gsub("^f", "Frequency", names(allinMS))

##Name the activities in the dataset from the activity descriptions
##allinMSact <- merge(allinMS, activitylabelsin, by = "activityId")
allinMS$activityId <- activitylabelsin[allinMS$activityId, 2]


## average each variable by acitivity and subject in a new dataset


summary <- allinMS%>%
        group_by(subjectId, activityId) %>%
        summarise_all(funs(mean)) 
write.table(summary, "summary.txt", row.name=FALSE)
