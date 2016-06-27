## Data Dictionary

"activity"  :  six activities performed by volunteers

        1 WALKING
        2 WALKING_UPSTAIRS
        3 WALKING_DOWNSTAIRS
        4 SITTING
        5 STANDING
        6 LAYING

"subject"   :  voluteer ID, from 1 to 30.

The following items are the average and standard deviation (std) of different measurement.  Please read the additional information below for details. 

"timebodyaccelerometer-mean()-x"
"timebodyaccelerometer-mean()-y"
"timebodyaccelerometer-mean()-z"
"timebodyaccelerometer-std()-x"
"timebodyaccelerometer-std()-y"                    
"timebodyaccelerometer-std()-z"
"timegravityaccelerometer-mean()-x"                
"timegravityaccelerometer-mean()-y"               
"timegravityaccelerometer-mean()-z"                
"timegravityaccelerometer-std()-x"                
"timegravityaccelerometer-std()-y"                 
"timegravityaccelerometer-std()-z"                
"timebodyaccelerometerjerk-mean()-x"               
"timebodyaccelerometerjerk-mean()-y"              
"timebodyaccelerometerjerk-mean()-z"               
"timebodyaccelerometerjerk-std()-x"               
"timebodyaccelerometerjerk-std()-y"                
"timebodyaccelerometerjerk-std()-z"               
"timebodygyroscope-mean()-x"                       
"timebodygyroscope-mean()-y"                      
"timebodygyroscope-mean()-z"                       
"timebodygyroscope-std()-x"                       
"timebodygyroscope-std()-y"                        
"timebodygyroscope-std()-z"                       
"timebodygyroscopejerk-mean()-x"                   
"timebodygyroscopejerk-mean()-y"                  
"timebodygyroscopejerk-mean()-z"                   
"timebodygyroscopejerk-std()-x"                   
"timebodygyroscopejerk-std()-y"                    
"timebodygyroscopejerk-std()-z"                   
"timebodyaccelerometermag-mean()"                  
"timebodyaccelerometermag-std()"                  
"timegravityaccelerometermag-mean()"               
"timegravityaccelerometermag-std()"               
"timebodyaccelerometerjerkmag-mean()"              
"timebodyaccelerometerjerkmag-std()"              
"timebodygyroscopemag-mean()"                      
"timebodygyroscopemag-std()"                      
"timebodygyroscopejerkmag-mean()"                  
"timebodygyroscopejerkmag-std()"                  
"frequencybodyaccelerometer-mean()-x"              
"frequencybodyaccelerometer-mean()-y"             
"frequencybodyaccelerometer-mean()-z"              
"frequencybodyaccelerometer-std()-x"              
"frequencybodyaccelerometer-std()-y"               
"frequencybodyaccelerometer-std()-z"              
"frequencybodyaccelerometer-meanfreq()-x"          
"frequencybodyaccelerometer-meanfreq()-y"         
"frequencybodyaccelerometer-meanfreq()-z"
"frequencybodyaccelerometerjerk-mean()-x"         
"frequencybodyaccelerometerjerk-mean()-y"          
"frequencybodyaccelerometerjerk-mean()-z"         
"frequencybodyaccelerometerjerk-std()-x"           
"frequencybodyaccelerometerjerk-std()-y"          
"frequencybodyaccelerometerjerk-std()-z"           
"frequencybodyaccelerometerjerk-meanfreq()-x"     
"frequencybodyaccelerometerjerk-meanfreq()-y"      
"frequencybodyaccelerometerjerk-meanfreq()-z"     
"frequencybodygyroscope-mean()-x"                  
"frequencybodygyroscope-mean()-y"                 
"frequencybodygyroscope-mean()-z"                  
"frequencybodygyroscope-std()-x"                  
"frequencybodygyroscope-std()-y"                   
"frequencybodygyroscope-std()-z"                  
"frequencybodygyroscope-meanfreq()-x"             
"frequencybodygyroscope-meanfreq()-y"             
"frequencybodygyroscope-meanfreq()-z"             
"frequencybodyaccelerometermag-mean()"            
"frequencybodyaccelerometermag-std()"             
"frequencybodyaccelerometermag-meanfreq()"        
"frequencybodybodyaccelerometerjerkmag-mean()"    
"frequencybodybodyaccelerometerjerkmag-std()"     
"frequencybodybodyaccelerometerjerkmag-meanfreq()"
"frequencybodybodygyroscopemag-mean()"            
"frequencybodybodygyroscopemag-std()"             
"frequencybodybodygyroscopemag-meanfreq()"        
"frequencybodybodygyroscopejerkmag-mean()"     
"frequencybodybodygyroscopejerkmag-std()"         
"frequencybodybodygyroscopejerkmag-meanfreq()" 


==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


Feature Selection 
=================

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

The complete list of variables of each feature vector is available in 'features.txt'

