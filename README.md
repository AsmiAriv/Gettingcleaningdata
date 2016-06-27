## Getting and Cleaning Data

Goal: To write a script using R Programming Language in order to create a tidy dataset 
based on some input files containing raw data to be used for later analysis.
      
Input: Zip file containing raw data

Output: Two tidy datasets to be used for later analysis.

Zip File Source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original source: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Process:
1. Write a script "run_analysis.R" to do the following
	> Download the zip file 
	> Unzip the file
	> process the raw datasets
	> Merge the training and the test sets
	> Extract only the measurements on the mean and standard deviation for each measurement
	> Use descriptive activity names to name the activities in the data set
	> Appropriately label the data set with descriptive variable names
	> Creates a second, independent tidy data set with the average of each variable for each activity and each subject

2. Develop a Code Book that provides details of variables in the data sets

3. Develop a README file explaining the details of this project

4. Create a repository on GitHub

3. Upload the R script, code book and README file on GitHub repo


How to use "run_analysis.R"?
1. Access R on your system
2. Install the "plyr" package, required for this scrip to run successfully
3. Copy and paste this script on your computer or open the scrip in R 
4. Change the working directory mentioned in the script as per your requirement
5. Run the script in your R console
6. The final data sets (two of them) will be stored in a folder called "Output"
   in your working directory

You can refer to CodeBook.md, for details on different variables. 


This repository contains the following:

1. run_analysis.R
2. CodeBook.md
3. README.md
4. "Output" folder containing two tidy data sets, namely "MeanStdData.csv" and "NewTidydata.csv"

MeanStdData.csv: The large data sets with the measurements on the mean and standard deviation for each measurement
NewTidydata.csv: A tidy data set with the average of each variable for each activity and each subject 
 


