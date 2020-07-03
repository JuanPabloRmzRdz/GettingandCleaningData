Codebook

Data description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.

Variables

In these database we have 563 variables that present each measurement and its axis. For example: the measurement "tBodyAcc"" and its "X" component and so forth. The next list presents the variables used:

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

Description of abbreviations of measurements

leading t or f is based on time or frequency measurements.

Body: related to body movement.

Gravity: acceleration of gravity

Acc: accelerometer measurement

Gyro: gyroscopic measurements

Jerk: sudden movement acceleration

Mag: magnitude of movement

The set of variables that were estimated from these signals are in the following list. Meaning that for each variable and its component this measurement was taken:

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

Transformations

Three data sets are developed with the program: "data", which is a data.frame with the train and set data.frames together; "dataMSTD", a data.frame with only the data that presents the mean or std of a variable; and "tidydata", a set with the average of each variable for each activity and each subject.

The row "Activity" was changed from the numeric representation of each activity performed by the subjects to a descriptive one.
