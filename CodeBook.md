The final file 'allinMS' contains the following fields: 
 [1] "subjectId"		                                
 [2] "activityId"              
 [3] "TimeBodyAccelerometer-mean()-X"                
 [4] "TimeBodyAccelerometer-mean()-Y"                
 [5] "TimeBodyAccelerometer-mean()-Z"                
 [6] "TimeGravityAccelerometer-mean()-X"             
 [7] "TimeGravityAccelerometer-mean()-Y"             
 [8] "TimeGravityAccelerometer-mean()-Z"             
 [9] "TimeBodyAccelerometerJerk-mean()-X"            
[10] "TimeBodyAccelerometerJerk-mean()-Y"            
[11] "TimeBodyAccelerometerJerk-mean()-Z"            
[12] "TimeBodyGyroscope-mean()-X"                    
[13] "TimeBodyGyroscope-mean()-Y"                    
[14] "TimeBodyGyroscope-mean()-Z"                    
[15] "TimeBodyGyroscopeJerk-mean()-X"                
[16] "TimeBodyGyroscopeJerk-mean()-Y"                
[17] "TimeBodyGyroscopeJerk-mean()-Z"                
[18] "TimeBodyAccelerometerMagnitude-mean()"         
[19] "TimeGravityAccelerometerMagnitude-mean()"      
[20] "TimeBodyAccelerometerJerkMagnitude-mean()"     
[21] "TimeBodyGyroscopeMagnitude-mean()"             
[22] "TimeBodyGyroscopeJerkMagnitude-mean()"         
[23] "FrequencyBodyAccelerometer-mean()-X"           
[24] "FrequencyBodyAccelerometer-mean()-Y"           
[25] "FrequencyBodyAccelerometer-mean()-Z"           
[26] "FrequencyBodyAccelerometerJerk-mean()-X"       
[27] "FrequencyBodyAccelerometerJerk-mean()-Y"       
[28] "FrequencyBodyAccelerometerJerk-mean()-Z"       
[29] "FrequencyBodyGyroscope-mean()-X"               
[30] "FrequencyBodyGyroscope-mean()-Y"               
[31] "FrequencyBodyGyroscope-mean()-Z"               
[32] "FrequencyBodyAccelerometerMagnitude-mean()"    
[33] "FrequencyBodyAccelerometerJerkMagnitude-mean()"
[34] "FrequencyBodyGyroscopeMagnitude-mean()"        
[35] "FrequencyBodyGyroscopeJerkMagnitude-mean()"    
[36] "TimeBodyAccelerometer-std()-X"                 
[37] "TimeBodyAccelerometer-std()-Y"                 
[38] "TimeBodyAccelerometer-std()-Z"                 
[39] "TimeGravityAccelerometer-std()-X"              
[40] "TimeGravityAccelerometer-std()-Y"              
[41] "TimeGravityAccelerometer-std()-Z"              
[42] "TimeBodyAccelerometerJerk-std()-X"             
[43] "TimeBodyAccelerometerJerk-std()-Y"             
[44] "TimeBodyAccelerometerJerk-std()-Z"             
[45] "TimeBodyGyroscope-std()-X"                     
[46] "TimeBodyGyroscope-std()-Y"                     
[47] "TimeBodyGyroscope-std()-Z"                     
[48] "TimeBodyGyroscopeJerk-std()-X"                 
[49] "TimeBodyGyroscopeJerk-std()-Y"                 
[50] "TimeBodyGyroscopeJerk-std()-Z"                 
[51] "TimeBodyAccelerometerMagnitude-std()"          
[52] "TimeGravityAccelerometerMagnitude-std()"       
[53] "TimeBodyAccelerometerJerkMagnitude-std()"      
[54] "TimeBodyGyroscopeMagnitude-std()"              
[55] "TimeBodyGyroscopeJerkMagnitude-std()"          
[56] "FrequencyBodyAccelerometer-std()-X"            
[57] "FrequencyBodyAccelerometer-std()-Y"            
[58] "FrequencyBodyAccelerometer-std()-Z"            
[59] "FrequencyBodyAccelerometerJerk-std()-X"        
[60] "FrequencyBodyAccelerometerJerk-std()-Y"        
[61] "FrequencyBodyAccelerometerJerk-std()-Z"        
[62] "FrequencyBodyGyroscope-std()-X"                
[63] "FrequencyBodyGyroscope-std()-Y"                
[64] "FrequencyBodyGyroscope-std()-Z"                
[65] "FrequencyBodyAccelerometerMagnitude-std()"     
[66] "FrequencyBodyAccelerometerJerkMagnitude-std()" 
[67] "FrequencyBodyGyroscopeMagnitude-std()"         
[68] "FrequencyBodyGyroscopeJerkMagnitude-std()"     

Where

- SubjectId ranges from 1 - 30 for the 30 sunjects that took part in 				the experiment 

-  activityId identifies one of six activities that were being performed while the measurements were being made (walking, walking upstairs, walking downstairs, standing, sitting, laying)                     

And from the information provided along with the raw data:

- Accelaration: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. X, Y and Z refere to measurements for the respective axes. 

- BodyAcceleration: The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- BodyGyroscope: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

The file 'summary' contains the same variables, the data has been averaged by subject for each activity.

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
