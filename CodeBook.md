# CourseProject: Code Book

The file "avg.of.mean.and.std.measurements.txt" includes
processed dataset for the course project. It 
has 82 columns.  The first 3 columns are:

- 'subject': integer. Person identification who performed
the activity.
- 'activity.id': integer. There are 6 unique activivities.
Each activity is assigned to an activity.id.
- 'activity.name': character. Descriptive name for the
6 different activivities.

The other 79 columns are different variables. They follow
the same naming convention.  
- the first letter is either 't' (indicates time domain)
or 'f' (indicates frequency domain).
- Subsequently, there are different words as listed below to
describe what is measured


BodyAcc
GravityAcc
BodyAccJerk
BodyGyro
BodyGyroJerk
BodyAccMag
GravityAccMag
BodyAccJerkMag
BodyGyroMag
BodyGyroJerkMag

- Following one of the above descriptive words, either
'-mean()' or '-std()' is included, indicating mean value and
standard deviation, respectively.

- At last, there might be '-X', '-Y', or '-Z' at the end,
indicating direction.

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

