require(dplyr)

createTidyDataset <- function() {
    getAndMergeData <- function(dataset) {
    
        train_subject <- read.table(paste("UCI HAR Dataset/", dataset, "/subject_", dataset, ".txt", sep = ""), header = FALSE, col.names = c("subjectId"))
        train_subject <- mutate(train_subject, rowNumber = row_number())
        
        train_activities <- read.table(paste("UCI HAR Dataset/", dataset, "/y_", dataset, ".txt", sep = ""), header = FALSE, col.names = c("activityLabelId"))
        train_activities <- mutate(train_activities, rowNumber = row_number())
        
        metaMerge <- merge(train_subject, train_activities, by.x = "rowNumber", by.y = "rowNumber", all = TRUE)
        
        features <- read.table("UCI HAR Dataset/features.txt", header = FALSE, sep = " ", col.names = c("columnId", "columnName"))
        
        train_data <- read.table(paste("UCI HAR Dataset/", dataset, "/X_", dataset, ".txt", sep = ""), header = FALSE, col.names = features$columnName)
        train_data <- mutate(train_data, rowNumber = row_number())
        
        merged <- merge(metaMerge, train_data, by.x = "rowNumber", by.y = "rowNumber", all = TRUE)
        
        return(merged)
    
    }
    
    joinDatasets <- function() {
        testDataset <- getAndMergeData("test")
        trainDataset <- getAndMergeData("train")
        newDataset <- rbind(testDataset, trainDataset)
        return(newDataset)
    }
    
    defineActivities <- function(data) {
        activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE, col.names = c("activityId", "activityLabel"))
        merged <- merge(data, activity_labels, by.x = "activityLabelId", by.y = "activityId", all = FALSE)
        
        return(merged)
    }
    
    filterColumns <- function(data) {
        data <- data[, grep("std|mean|activityLabel|subjectId", colnames(data))]
        data <- data[, -grep("Freq|activityLabelId", colnames(data))]
        return(data)
    }
    
    data <- joinDatasets()
    data <- defineActivities(data)
    data <- filterColumns(data)
    
    return(data)
}

groupBySubjectIdAndActivity <- function(data) {
    return(data %>% group_by(subjectId, activityLabel) %>% summarise_each(funs(mean)))
}