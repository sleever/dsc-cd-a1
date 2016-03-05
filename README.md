# Create a tidy dataset

This readme describes the functionality of the application which creates a tidy dataset from data that is collected using wearables and/or mobile phones. The dataset contains the data from (for example) the accelerometer and gyroscope.

The code necessary to create the tidy dataset is included in the run_analysis.R file and uses the dataset which is (partly) uploaded to the data/* folder. (It would be better to create your own data/* folder with the dataset files in them from the assignment).

### Prerequisites

The application requires the package "dplyr" to be downloaded and installed with R to work properly.

### Version

1.0.0

### Technical description

The application consists of the following methods in order to create the tidy dataset.

```r
createTidyDataset

This functoin is responisble for creating the tidy dataset as defined by the requirements of the assignment. The function uses other helper functions to return the tidy dataset.

arguments: none
returns: [dataframe] data
```

```r
createTidyDataset > getAndMergeData

A helper function from createTidyDataset, this function is called to fetch the training and test datasets and merge them seperately. This means that this function has to be called twice in order to get both datasets merged.

Next to merging the datasets, the data columns are named using the features.txt definition file.

Example: 
getAndMergeData("test") will get the test dataset.
getAndMergeData("train") will get the training dataset.

arguments: [character] dataset
returns: [dataframe] merged
```

```r
createTidyDataset > joinDatasets

A helper function from createTidyDataset, this function calls getAndMergeData and will join the datasets using rbind()

arguments: none
returns: [dataframe] concatenated dataframe
```

```r
createTidyDataset > defineActivities

A helper function from createTidyDataset, this function classifies the activityLabelId ID's to match the activity labels in activity_labels.txt to define readable activity labels instead of using ID's.

arguments: [dataframe] data
returns: [dataframe] enriched dataframe
```

```r
createTidyDataset > defineActivities

A helper function from createTidyDataset, this function classifies the activityLabelId ID's to match the activity labels in activity_labels.txt to define readable activity labels instead of using ID's.

arguments: [dataframe] data
returns: [dataframe] enriched dataframe
```

```r
createTidyDataset > filterColumns

A helper function from createTidyDataset, this function filters the columns that do not contain *std(), *mean() and  activityLabelId

arguments: [dataframe] data
returns: [dataframe] filtered dataframe
```

The helper functions are used in the main createTidyDataset function in a predefined order to create the tidy dataset:

```r
createTidyDataset <- function() {

	... general functionality ...

	data <- joinDatasets()
    data <- defineActivities(data)
    data <- filterColumns(data)
	
}
```

```r
groupBySubjectIdAndActivity

The dataset returned by "createTidyDataset" can be used by this function to group the dataframe by subjectId and activityLabel, respectively. The function will also calculate the average over the data columns (floats) in the dataset relative to the grouping.

arguments: [dataframe] data
returns: [dataframe] grouped
```

### Usage

In order to use the application you should load the run_analysis.R in the R application. Next to that you have to make sure that the working directly is pointing to the correct location for the datasets to be loaded from the data\* directory.

Remember to install the package "dplyr".

```r
data <- createTidyDataset()
```

```r
grouped <- groupBySubjectIdAndActivity(data)
```