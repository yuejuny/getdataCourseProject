# CourseProject: Code Book

The file "avg.of.mean.and.std.measurements.txt" includes
processed dataset for the course project. Each row has
79 average values for different measurements, corresponding
to a subject and an activity. 

Subject and activity are identified by the first 3 columns:

- 'subject': integer. Person identification who performed
the activity.
- 'activity.id': integer. There are 6 unique activivities.
Each activity is assigned to an activity.id.
- 'activity.name': character. Descriptive name for the
6 different activivities.

The other 79 columns are different variables. Their
names follow the same naming convention.  
- the first letter is either 't' (indicates time domain)
or 'f' (indicates frequency domain).
- Subsequently, there are different words as listed below to
describe what is measured
  * BodyAcc (unit: standard gravity 'g')
  * GravityAcc (unit: standard gravity 'g')
  * BodyAccJerk (unit: standard gravity 'g')
  * BodyGyro (unit: radians/second)
  * BodyGyroJerk (unit: radians/second)
  * BodyAccMag (unit: standard gravity 'g')
  * GravityAccMag (unit: standard gravity 'g')
  * BodyAccJerkMag (unit: standard gravity 'g')
  * BodyGyroMag (unit: radians/second)
  * BodyGyroJerkMag (unit: radians/second)
- Following one of the above descriptive words, either
'-mean()' or '-std()' is included, indicating mean value and
standard deviation, respectively.
- At last, there might be '-X', '-Y', or '-Z' at the end,
indicating direction.

##NOTES
For more details on the measurements, refer to
features_info.txt in the original dataset that
is available:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
