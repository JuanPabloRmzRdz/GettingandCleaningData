# GettingandCleaningData

##The document run_Analysis works as following:
##1. Reads the required files to merge the data:features.txt,activity_labels.txt, subject_train.txt, y_train.txt, X_train.txt, subject_test.txt,y_test.txt, X_test.txt
##2. Creates the two different data.frames for train and test
##3. Merges test and train data.frames and creates the first data.frame "data"
##4. Takes "data" and creates another data.frame withi only the variables that present the mean and std data for each measurement "dataMSTD"
##5. Changes the "Activity" column data from the numeric value to the descriptive variable.
##6.Presents the descriptive variable names
##7. Creates a tidy data set with the average of each variable for each activity and each subject "tidydata".
      