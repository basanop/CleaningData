## Data Set Code Book: Mean Human Activity Recognition Using Smartphones Dataset

Sampson Adu-Poku

August 25th, 2014

### MeanActivityData.txt

### Purpose:

To demonstrate the ability to prepare a tidy data that can be used for data analysis using R

### Source:

Original data source was provided by Jorge L. Reyes-Otis, Davide Anguita, Alessandro Ghio, and Luca Oneto

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Università degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws

www.smartlab.ws

### Description: 
The original data consisted of the following:
* A 561-feature vector with time and frequency domain variables
* training data
* test data
* bIts activity label
* An identifier of the subject who carried out the experiment

The training and the test sets were combined to create one data set. Then only the measurements containing the mean and standard deviation for each measurement was extracted. The train and test labels were combine into one column called `label`. The subject_train and subjext_test files where also combind into one column called `subject` the test and train. The data set were combined using the `rbind()`. The label was then recoded using the `R recode()` function as follows:

* 1=WALKING 
* 2=WALKING_UPSTAIRS
* 3=WALKING_DOWNSTAIRS
* 4=SITTING 
* 5=STANDING
* 6=LAYING

The files were combined using the `R cbind()` function. 
The `aggregate()` function was used to aggregate the resultant data frame. `The aggregate()` function represents a summary of a scalar valued statistic, broken down by one or more groups. The `aggregate ()` presents the results in a data frame instead of a table.

### Number of Attributes:
* No. of attributes = 68
* No. of Instances = 180

Each row identified the mean of each measurement extracted and is grouped by activity label and the subject who performed the activity

### Attributes description:

activity:
* Identified the class labels with their activity name

subject:
* Identifies the subject who performed the activity for each window sample. the range is from 1 to 30

tbodyaccmeanx:
* The mean of the time domain body acceleration mean signal in the x direction

tbodyaccmeany:
* The mean of the time domain body acceleration mean signal in the y direction

tbodyaccmeanz:
* The mean of the time domain body acceleration mean signal in the z direction

tbodyaccstdx:
* The mean of the time domain body acceleration standard deviation signal in the x direction

tbodyaccstdy:
* The mean of the time domain body acceleration standard deviation signal in the y direction

tbodyaccstdz:
* The mean of the time domain body acceleration standard deviation signal in the z direction

tgravityaccmeanx:
* The mean of the time domain gravity acceleration mean signal in the x direction

tgravityaccmeany:
* The mean of the time domain gravity acceleration mean signal in the y direction

tgravityaccmeanz:
* The mean of the time domain gravity acceleration mean signal in the z direction

tgravityaccstdx:
* The mean of the time domain gravity acceleration standard deviation signal in the x direction

tgravityaccstdy:
* The mean of the time domain gravity acceleration standard deviation signal in the y direction

tgravityaccstdz:
* The mean of the time domain gravity acceleration standard deviation signal in the z direction

tbodyaccjerkmeanx: 
* The mean of the time domain body acceleration jerk mean signal in the x direction

tbodyaccjerkmeany:
* The mean of the time domain body acceleration jerk mean signal in the y direction

tbodyaccjerkmeanz:
* The mean of the time domain body acceleration jerk mean signal in the z direction

tbodyaccjerkstdx:
* The mean of the time domain body acceleration jerk standard deviation signal in the x direction

tbodyaccjerkstdy:
* The mean of the time domain body acceleration jerk standard deviation signal in the y direction

tbodyaccjerkstdz:
* The mean of the time domain body acceleration jerk standard deviation signal in the z direction

tbodygyromeanx:
* The mean of the time domain body gyroscope mean signal in the x direction

tbodygyromeany:
* The mean of the time domain body gyroscope mean signal in the y direction

tbodygyromeanz:
* The mean of the time domain body gyroscope mean signal in the z direction

tbodygyrostdx:
* The mean of the time domain body gyroscope standard deviation signal in the x direction

tbodygyrostdy:
* The mean of the time domain body gyroscope standard deviation signal in the y direction

tbodygyrostdz:
* The mean of the time domain body gyroscope standard deviation signal in the z direction

tbodygyrojerkmeanx:
* The mean of the time domain body gyroscope jerk mean signal in the x direction

tbodygyrojerkmeany:
* The mean of the time domain body gyroscope jerk mean signal in the y direction

tbodygyrojerkmeanz:
* The mean of the time domain body gyroscope jerk mean signal in the z direction

tbodygyrojerkstdx:
* The mean of the time domain body gyroscope jerk standard deviation signal in the x direction

tbodygyrojerkstdy:
* The mean of the time domain body gyroscope jerk standard deviation signal in the y direction

tbodygyrojerkstdz:
* The mean of the time domain body gyroscope jerk standard deviation signal in the z direction

tbodyaccmagmean:
* The mean of the time domain body linear acceleration magnitude of the mean

tbodyaccmagstd:
* The mean of the time domain body linear acceleration magnitude of the standard deviation

tgravityaccmagmean:
* The mean of the time domain gravity linear acceleration magnitude of the mean

tgravityaccmagstd:
* The mean of the time domain gravity linear acceleration magnitude of the standard deviation

tbodyaccjerkmagmean:
* The mean of the time domain body linear acceleration jerk magnitude of the mean

tbodyaccjerkmagstd:
* The mean of the time domain body linear acceleration jerk magnitude of the standard deviation

tbodygyromagmean:
* The mean of the time domain body linear gyroscope magnitude of the mean

tbodygyromagstd:
* The mean of the time domain body linear gyroscope magnitude of the standard deviation

tbodygyrojerkmagmean:
* The mean of the time domain body gyroscope of the linear cceleration and angular velocity magnitude of the mean

tbodygyrojerkmagstd:
* The mean of the time domain body gyroscope of the linear cceleration and angular velocity magnitude of the standard deviation

fbodyaccmeanx:
* The mean of the frequency domain body acceleration mean signal in the x direction

fbodyaccmeany:
* The mean of the frequency domain body acceleration mean signal in the y direction

fbodyaccmeanz:
* The mean of the frequency domain body acceleration mean signal in the z direction

fbodyaccstdx:
* The mean of the frequency domain body acceleration standard deviation signal in the x direction

fbodyaccstdy:
* The mean of the frequency domain body acceleration standard deviation signal in the y direction

fbodyaccstdz:
* The mean of the frequency domain body acceleration standard deviation signal in the z direction

fbodyaccjerkmeanx:
* The mean of the frequency domain body of the linear acceleration and angular velocity of the mean signal in the x direction

fbodyaccjerkmeany:
* The mean of the frequency domain body of the linear acceleration and angular velocity of the mean signal in the y direction

fbodyaccjerkmeanz:
* The mean of the frequency domain body of the linear acceleration and angular velocity of the mean signal in the z direction

fbodyaccjerkstdx:
* The mean of the frequency domain body of the linear acceleration and angular velocity of the mean signal in the x direction

fbodyaccjerkstdy:
* The mean of the frequency domain body of the linear acceleration and angular velocity of the mean signal in the y direction

fbodyaccjerkstdz:
* The mean of the frequency domain body of the linear acceleration and angular velocity of the  mean signal in the z direction

fbodygyromeanx:
* The mean of the frequency domain of the body gyroscope mean signal in the x direction

fbodygyromeany:
* The mean of the frequency domain of the body gyroscope mean signal in the y direction

fbodygyromeanz:
* The mean of the frequency domain of the body gyroscope mean signal in the z direction

fbodygyrostdx:
* The mean of the frequency domain of the body gyroscope standard deviation signal in the x direction

fbodygyrostdy:
* The mean of the frequency domain of the body gyroscope standard deviation signal in the y direction

fbodygyrostdz:
* The mean of the frequency domain of the body gyroscope standard deviation signal in the z direction

fbodyaccmagmean:
* The mean of the means of the frequency domain body accelerometer

fbodyaccmagstd:
* The mean of the standard deviation of the frequency domain body accelerometer magnitude

fbodybodyaccjerkmagmean:
* The mean of the frequency domain of the mean of the magnitude of the body accelerometer of the  linear acceleration and angular velocity

fbodybodyaccjerkmagstd:
* The mean of the frequency domain of the standard deviation of the magnitude of the body accelerometer of the linear acceleration and angular velocity

fbodybodygyromagmean:
* The mean of the frequency domain of the mean of the magnitude of the body gyroscope 

fbodybodygyromagstd:
* The mean of the frequency domain of the standard deviation of the magnitude of the body measured by the gyroscope

fbodybodygyrojerkmagmean:
* The mean of the frequency domain of the mean of the magnitude of the linear acceleration and angular velocity of the body measured by the gyroscope

fbodybodygyrojerkmagstd:
* The mean of the frequency domain of the standard deviation of the magnitude of the linear acceleration and angular velocity  of the body measured by the gyroscope

