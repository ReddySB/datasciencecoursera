This files explains the process follwed to create a tidy data.


All the files (Test and Training) will be copied to the data folder of the current working directory
Reads the test and training data files in to dataset
Finds the average and standard deveation for the each row and appends these values as the last columns in the dataset
Appends activies and subject data to the respective files
Appeneds each test file to the respective traing data file to make a single data set for each measurement
This process will be repeated to all the files

Extracts only the mean and standard deviation of  each measurement along with the subject and activity values to make tidy data set
At the end it calculates the mean of each measurement by subject and activity wise

The run_analysis.R is the r script file to executes the process
The run_analysis.MD is the mark down file which explains the variables [Codebook] 



