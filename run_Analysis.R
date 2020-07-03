##Read all the required files

      ##Features and activity labels
      setwd("/Users/juanpablormzrdz/Documents/RStudio Coursera/GettingandCleaningData")
      features <- read.table("/Users/juanpablormzrdz/Documents/RStudio Coursera/GettingandCleaningData/features.txt")
      activity_labels <- read.table("/Users/juanpablormzrdz/Documents/RStudio Coursera/GettingandCleaningData/activity_labels.txt")
     
      ##Train set
      setwd("/Users/juanpablormzrdz/Documents/RStudio Coursera/GettingandCleaningData/train")
      subject_train <- read.table("/Users/juanpablormzrdz/Documents/RStudio Coursera/GettingandCleaningData/train/subject_train.txt")
      y_train <- read.table("/Users/juanpablormzrdz/Documents/RStudio Coursera/GettingandCleaningData/train/y_train.txt")
      X_train <- read.table("/Users/juanpablormzrdz/Documents/RStudio Coursera/GettingandCleaningData/train/X_train.txt")
      
      
      ##Test set
      setwd("/Users/juanpablormzrdz/Documents/RStudio Coursera/GettingandCleaningData/test")
      subject_test <- read.table("/Users/juanpablormzrdz/Documents/RStudio Coursera/GettingandCleaningData/test/subject_test.txt")
      y_test <- read.table("/Users/juanpablormzrdz/Documents/RStudio Coursera/GettingandCleaningData/test/y_test.txt")
      X_test <- read.table("/Users/juanpablormzrdz/Documents/RStudio Coursera/GettingandCleaningData/test/X_test.txt")
      
##Create the data.frames
      
      ##Train data.frame
      colnames(subject_train) <- "Subject"
      colnames(y_train) <- "Activity"
      colnames(X_train) <- features$V2
      train <- cbind(subject_train,y_train,X_train)
      
      ##Test data.frame
      colnames(subject_test) <- "Subject"
      colnames(y_test) <- "Activity"
      colnames(X_test) <- features$V2
      test <- cbind(subject_test,y_test,X_test)

#Merging test and train data sets
      data<-rbind(test,train)
      
##Taking mean and std data for each measurement
      dataMSTD<-select(data,1,2,grep("[Mm]ean|[Ss]td",names(data)))
      
##Changing the activity names to descriptive variables
      data$Activity <- mapvalues(data$Activity,from=c(1,2,3,4,5,6),to=activity_labels$V2)
      
##Presenting the descriptive variable names
      str(data)
      
##Tidy data set with the average of each variable for each activity and each subject
      tidydata <- dcast(data,Activity & Subject ~ features$V2, mean)
      