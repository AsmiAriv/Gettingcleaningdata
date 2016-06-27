##Details of data sets

The original source of the raw data is:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The source of zip file is:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

The dataset information as provided in the original source (on UCI Machine Learning Repository website)
"Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data." - as provided on the UCI Machine Learning Repository website.

The attribute information (As provided on the website):
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

 
Original Raw data contains the following:

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

Feature Selection:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


Acknowledgement for using the original data sets:

"[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012."





After runing the R script we get the following datasets(Read "README.md" for details on the script and how to use it):


##MeanStdData.csv: This dataset containing only the measurements on the mean and standard deviation for each measurement, 10299 rows of observations, a header and 82 valiables:
(These details have been captured as per the experiment carried out with a group of 30 volunteers within an age bracket of 19-48 years)

[1] "X"                               "id"                             
 [3] "activity"                        "tBodyAcc.mean...X"              
 [5] "tBodyAcc.mean...Y"               "tBodyAcc.mean...Z"              
 [7] "tGravityAcc.mean...X"            "tGravityAcc.mean...Y"           
 [9] "tGravityAcc.mean...Z"            "tBodyAccJerk.mean...X"          
[11] "tBodyAccJerk.mean...Y"           "tBodyAccJerk.mean...Z"          
[13] "tBodyGyro.mean...X"              "tBodyGyro.mean...Y"             
[15] "tBodyGyro.mean...Z"              "tBodyGyroJerk.mean...X"         
[17] "tBodyGyroJerk.mean...Y"          "tBodyGyroJerk.mean...Z"         
[19] "tBodyAccMag.mean.."              "tGravityAccMag.mean.."          
[21] "tBodyAccJerkMag.mean.."          "tBodyGyroMag.mean.."            
[23] "tBodyGyroJerkMag.mean.."         "fBodyAcc.mean...X"              
[25] "fBodyAcc.mean...Y"               "fBodyAcc.mean...Z"              
[27] "fBodyAcc.meanFreq...X"           "fBodyAcc.meanFreq...Y"          
[29] "fBodyAcc.meanFreq...Z"           "fBodyAccJerk.mean...X"          
[31] "fBodyAccJerk.mean...Y"           "fBodyAccJerk.mean...Z"          
[33] "fBodyAccJerk.meanFreq...X"       "fBodyAccJerk.meanFreq...Y"      
[35] "fBodyAccJerk.meanFreq...Z"       "fBodyGyro.mean...X"             
[37] "fBodyGyro.mean...Y"              "fBodyGyro.mean...Z"             
[39] "fBodyGyro.meanFreq...X"          "fBodyGyro.meanFreq...Y"         
[41] "fBodyGyro.meanFreq...Z"          "fBodyAccMag.mean.."             
[43] "fBodyAccMag.meanFreq.."          "fBodyBodyAccJerkMag.mean.."     
[45] "fBodyBodyAccJerkMag.meanFreq.."  "fBodyBodyGyroMag.mean.."        
[47] "fBodyBodyGyroMag.meanFreq.."     "fBodyBodyGyroJerkMag.mean.."    
[49] "fBodyBodyGyroJerkMag.meanFreq.." "tBodyAcc.std...X"               
[51] "tBodyAcc.std...Y"                "tBodyAcc.std...Z"               
[53] "tGravityAcc.std...X"             "tGravityAcc.std...Y"            
[55] "tGravityAcc.std...Z"             "tBodyAccJerk.std...X"           
[57] "tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"           
[59] "tBodyGyro.std...X"               "tBodyGyro.std...Y"              
[61] "tBodyGyro.std...Z"               "tBodyGyroJerk.std...X"          
[63] "tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"          
[65] "tBodyAccMag.std.."               "tGravityAccMag.std.."           
[67] "tBodyAccJerkMag.std.."           "tBodyGyroMag.std.."             
[69] "tBodyGyroJerkMag.std.."          "fBodyAcc.std...X"               
[71] "fBodyAcc.std...Y"                "fBodyAcc.std...Z"               
[73] "fBodyAccJerk.std...X"            "fBodyAccJerk.std...Y"           
[75] "fBodyAccJerk.std...Z"            "fBodyGyro.std...X"              
[77] "fBodyGyro.std...Y"               "fBodyGyro.std...Z"              
[79] "fBodyAccMag.std.."               "fBodyBodyAccJerkMag.std.."      
[81] "fBodyBodyGyroMag.std.."          "fBodyBodyGyroJerkMag.std.."     
> 


##NewTidyData.csv:This dataset containing only the average of each variable for each activity and each subject, 181 rows of observations, a header and 82 valiables:
(These details have been captured as per the experiment carried out with a group of 30 volunteers within an age bracket of 19-48 years)

 [1] "X"                                   
 [2] "id"                                  
 [3] "activity"                            
 [4] "tBodyAcc.mean...X_mean"              
 [5] "tBodyAcc.mean...Y_mean"              
 [6] "tBodyAcc.mean...Z_mean"              
 [7] "tGravityAcc.mean...X_mean"           
 [8] "tGravityAcc.mean...Y_mean"           
 [9] "tGravityAcc.mean...Z_mean"           
[10] "tBodyAccJerk.mean...X_mean"          
[11] "tBodyAccJerk.mean...Y_mean"          
[12] "tBodyAccJerk.mean...Z_mean"          
[13] "tBodyGyro.mean...X_mean"             
[14] "tBodyGyro.mean...Y_mean"             
[15] "tBodyGyro.mean...Z_mean"             
[16] "tBodyGyroJerk.mean...X_mean"         
[17] "tBodyGyroJerk.mean...Y_mean"         
[18] "tBodyGyroJerk.mean...Z_mean"         
[19] "tBodyAccMag.mean.._mean"             
[20] "tGravityAccMag.mean.._mean"          
[21] "tBodyAccJerkMag.mean.._mean"         
[22] "tBodyGyroMag.mean.._mean"            
[23] "tBodyGyroJerkMag.mean.._mean"        
[24] "fBodyAcc.mean...X_mean"              
[25] "fBodyAcc.mean...Y_mean"              
[26] "fBodyAcc.mean...Z_mean"              
[27] "fBodyAcc.meanFreq...X_mean"          
[28] "fBodyAcc.meanFreq...Y_mean"          
[29] "fBodyAcc.meanFreq...Z_mean"          
[30] "fBodyAccJerk.mean...X_mean"          
[31] "fBodyAccJerk.mean...Y_mean"          
[32] "fBodyAccJerk.mean...Z_mean"          
[33] "fBodyAccJerk.meanFreq...X_mean"      
[34] "fBodyAccJerk.meanFreq...Y_mean"      
[35] "fBodyAccJerk.meanFreq...Z_mean"      
[36] "fBodyGyro.mean...X_mean"             
[37] "fBodyGyro.mean...Y_mean"             
[38] "fBodyGyro.mean...Z_mean"             
[39] "fBodyGyro.meanFreq...X_mean"         
[40] "fBodyGyro.meanFreq...Y_mean"         
[41] "fBodyGyro.meanFreq...Z_mean"         
[42] "fBodyAccMag.mean.._mean"             
[43] "fBodyAccMag.meanFreq.._mean"         
[44] "fBodyBodyAccJerkMag.mean.._mean"     
[45] "fBodyBodyAccJerkMag.meanFreq.._mean" 
[46] "fBodyBodyGyroMag.mean.._mean"        
[47] "fBodyBodyGyroMag.meanFreq.._mean"    
[48] "fBodyBodyGyroJerkMag.mean.._mean"    
[49] "fBodyBodyGyroJerkMag.meanFreq.._mean"
[50] "tBodyAcc.std...X_mean"               
[51] "tBodyAcc.std...Y_mean"               
[52] "tBodyAcc.std...Z_mean"               
[53] "tGravityAcc.std...X_mean"            
[54] "tGravityAcc.std...Y_mean"            
[55] "tGravityAcc.std...Z_mean"            
[56] "tBodyAccJerk.std...X_mean"           
[57] "tBodyAccJerk.std...Y_mean"           
[58] "tBodyAccJerk.std...Z_mean"           
[59] "tBodyGyro.std...X_mean"              
[60] "tBodyGyro.std...Y_mean"              
[61] "tBodyGyro.std...Z_mean"              
[62] "tBodyGyroJerk.std...X_mean"          
[63] "tBodyGyroJerk.std...Y_mean"          
[64] "tBodyGyroJerk.std...Z_mean"          
[65] "tBodyAccMag.std.._mean"              
[66] "tGravityAccMag.std.._mean"           
[67] "tBodyAccJerkMag.std.._mean"          
[68] "tBodyGyroMag.std.._mean"             
[69] "tBodyGyroJerkMag.std.._mean"         
[70] "fBodyAcc.std...X_mean"               
[71] "fBodyAcc.std...Y_mean"               
[72] "fBodyAcc.std...Z_mean"               
[73] "fBodyAccJerk.std...X_mean"           
[74] "fBodyAccJerk.std...Y_mean"           
[75] "fBodyAccJerk.std...Z_mean"           
[76] "fBodyGyro.std...X_mean"              
[77] "fBodyGyro.std...Y_mean"              
[78] "fBodyGyro.std...Z_mean"              
[79] "fBodyAccMag.std.._mean"              
[80] "fBodyBodyAccJerkMag.std.._mean"      
[81] "fBodyBodyGyroMag.std.._mean"         
[82] "fBodyBodyGyroJerkMag.std.._mean" 
