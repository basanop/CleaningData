#############################################
##Getting and Cleaning Data Course Project
##Coursera Course
##Author: Sampson Adu-Poku
##Date: 08/23/2014
##run_analysis.R
#############################################

library(data.table)
library(plyr)
library(reshape2)
library(car) ##to use recode()

#############################################
##Import the tables into R
#############################################

header1 <- read.table("features.txt",header=F)
head(header1)
colheader <- header1[,2]
train <- read.table("X_train.txt",header=F)
names(train) <- colheader
test <- read.table("X_test.txt",header=F)
names(test) <-colheader

##combine the test and train data using rbind()
my_data <- rbind(train,test)

##using the names function to see the names of the variables and which column of data they correspond
names(my_data)

## Using the column indeces to subset bthe number of columnbs we need
my_data2 <- my_data[,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543)]
dim(my_data2) ##Dettermine the number of rows and columns after subsetting

##Rename column names appropriately
mychar <-tolower(names(my_data2)) ##change the columns names to lowercase and assign to mychar
mychar<-gsub(pattern="-",replacement="",x=mychar)
mychar<-gsub(pattern="\\(\\)",replacement="",x=mychar)
names(my_data2)<-mychar

##Creating the Activity Label
trainlabel <-read.table("y_train.txt",header=F)
names(trainlabel)<-"label"
testlabel <-read.table("y_test.txt",header=F)
names(testlabel)<-"label"

##Combine the test and train
label <-rbind(trainlabel,testlabel)
##Recode the activity label variables
label <- recode(label$label,"1='WALKING' ; 2='WALKING_UPSTAIRS';3='WALKING_DOWNSTAIRS'; 4='SITTING'; 5='STANDING'; 6='LAYING'",as.factor.result=TRUE, levels=c('WALKING','WALKING_UPSTAIRS','WALKING_DOWNSTAIRS','SITTING','STANDING','LAYING') )

##Creating the Subject
subjecttrain <-read.table("subject_train.txt",header=F)
names(subjecttrain) <-"subject"
subjecttest <-read.table("subject_test.txt",header=F)
names(subjecttest) <-"subject"

##combine the label and subject into one data frame
labsub <- cbind(label,rbind(subjecttrain,subjecttest))

##Combining the final data frame
testdata <- cbind(labsub,my_data2)

##Calculate the means of each column grouping by Activity label and then by subject. 
##Note that the data frame returned by aggregate() has the appropriate column names, and that
##grouping variable names can be supplied with the listof grouping

df<-aggregate(testdata[,c(-1,-2)],list(activity=testdata$label,subect=testdata$subject),mean)
dim(df) ##Dettermine the number of rows and columns after aggregations

##Export data frame into text file
write.table(df,file="MeanActivityData.txt",quote=F,sep="\t",row.names=FALSE,col.names=TRUE)
