# getdataCourseProject

##This dataset includes:
- "README.md"
- "run_analysis.R": R script for processing data and write a table as the results
- "CodeBook.md": explain each variable in the output file of "run_analysis.R"
- "avg.of.mean.and.std.measurements.txt": output file of "run_analysis.R". It
includes 82 variables, each of which is explained in "CodeBook.md". 

##Main steps of data process:
"run_analysis.R" is the scrpt used to process dataset. The process
includes:


1. Merge train/test datasets in folder "raw.data" and save
merged dataset in folder "processed.data". These are the
merged files:
  * subject_train.txt + subject_test.txt --> subject_merged.txt
  * X_train.txt + X_test.txt --> X_merged.txt
  * y_train.txt + y_test.txt --> y_merged.txt
Refer to README.txt in the original dataset for more detailed information
about these files. [Download the original dataset for
this project](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Merge descriptive activity lables and subjects (person who perform
these activities) with the measurements.
3. Calculate average for each measurement for each activity and each
subject.
4. Write the average values as a txt file.
