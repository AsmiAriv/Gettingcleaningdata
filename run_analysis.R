##The following R script downloads HARDataset.zip and does the following:
## 1.Merges the training and the test sets to create one data set.
## 2.Extracts only the measurements on the mean and standard deviation for each measurement.
## 3.Uses descriptive activity names to name the activities in the data set
## 4.Appropriately labels the data set with descriptive variable names.
##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


###Part1: setting the environment for different activities and collecting data

##Setting the working directory in order to save and retrieve all the data 
setwd("C:/R/Coursera/Cleaning Data/Week4/Project") 

## Required package in order to do various operations 
require(plyr)   

#Downloading the HAR zip file if it's not present in the project folder
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
zipfile <- "hardataset.zip" 

if(!file.exists(zipfile)){ 
print("downloading the zip file") 
f <- file.path(getwd(),zipfile)
download.file(url, f, method="curl") 
} 
 
 
##Unzipping the downloaded zip file(if not unzipped already)
##creating a new folder to store the output (if no such folder exists) 

infolder <- "UCI HAR Dataset" 
outfolder <- "Output" 

##Unzipping
if(!file.exists(infolder)){ 
	print("Unzipping the downloaded zip file") 
 	unzip(zipfile, list = FALSE, overwrite = TRUE) 
 }  

##Creating a new folder "Output"
if(!file.exists(outfolder)){ 
 	print("Creating the Output folder") 
 	dir.create(outfolder) 
 }  
 

##Part2: Creating different functions to be used in main activities

 
#Creating a function to read the text files and converting them into to dataframes 
dftables <- function (fname,clName = NULL){ 
 	print(paste("Reading file and converting to df:", fname)) 
 	file <- paste(infolder,fname,sep="/") 
 	df <- data.frame() 
 	if(is.null(clName)){ 
 		df <- read.table(file,sep="",stringsAsFactors=F) 
 	} else { 
 		df <- read.table(file,sep="",stringsAsFactors=F, col.names= clName) 
 	} 
 	df 
 } 
 
 
 
##Creating a function to read and collate data by calling "dftables" function

colldata <- function(type, features){ 
 	print(paste("Reading and collating data of", type)) 
 	subject_type <- dftables(paste(type,"/","subject_",type,".txt",sep=""),"id") 
 	y_type <- dftables(paste(type,"/","y_",type,".txt",sep=""),"activity") 
 	x_type <- dftables(paste(type,"/","X_",type,".txt",sep=""),features$V2) 
 	return (cbind(subject_type,y_type,x_type)) 
 } 
 
 

 
 
##Creating a function that saves the output data in the Output folder with a desired filename 

output_save <- function (data,filename){ 
 	print(paste("Saving the output data", filename)) 
 	newfile <- paste(outfolder, "/", filename,".csv" ,sep="") 
 	write.csv(data,newfile) 
 } 

 
###Part3: Working on assigned tasks using different functions created in part2  
 
##Collating the test and the train datasets
ftrs <- dftables("features.txt") 
 test <- colldata("test", ftrs) 
 train <- colldata("train", ftrs) 
 
 
##Merging the training and the test sets to create a single data set. 
 	data <- rbind(train, test) 
	data <- arrange(data, id) 

 
##Extracting only the measurements on the mean and standard deviation for each measurement.  

 MeanStdData <- data[,c(1,2,grep("mean", colnames(data)), grep("std", colnames(data)))] 
 output_save(MeanStdData,"MeanStdData") 
 
 
##Using descriptive activity names from activity_labels.txt file to name the activities in the data set 

 activity_names <- dftables("activity_labels.txt") 
 
 
## Appropriately labeling the data set with descriptive variable names.  

 data$activity <- factor(data$activity, levels=activity_names$V1, labels=activity_names$V2) 
 
 
## Creating a second, independent tidy data set with the average of each variable for each activity and each subject.  

NewTidydata <- ddply(MeanStdData, .(id, activity), .fun=function(x){colMeans(x[,-c(1:2)])}) 
colnames(NewTidydata)[-c(1:2)] <- paste(colnames(NewTidydata)[-c(1:2)], "_mean", sep="") 
output_save(NewTidydata,"NewTidydata") 
