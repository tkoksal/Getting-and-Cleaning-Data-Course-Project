Codebook for Human Activity Recognition Using Smartphones
==========================================================
### (Variables pertaining only to the measurements on the mean and standard deviation)

***

In preparing this codebook, [*Human Activity Recognition Using Smartphones*][1] study website was used as a reference.

***

| NO| VARIABLE NAME  | VARIABLE DESCRIPTION  | VALUES, UNITS OR EXPLANATION  |
|---|---|---|---|
|  1 | subject   | Subject Identifier   | Integer ranging 1 : 30   |
|  2 | activity  | Activity Type        | 1. WALKING <br>2. WALKING_UPSTAIRS <br>3. WALKING_DOWNSTAIRS <br>4. SITTING <br>5. STANDING <br>6. LAYING |
|  3 | trainortest  | Training group or test group  | 1. train <br>2. test  |
|  4 | tBodyAcc_mean_X  | Time domain, mean body motion accelaration along x-axis  | Numeric, in standart gravity units 'g'   |
|  5 | tBodyAcc_mean_Y  | Time domain, mean body motion accelaration along y-axis   | Numeric, in standart gravity units 'g'  |
|  6 | tBodyAcc_mean_Z  | Time domain, mean body motion accelaration along z-axis  | Numeric, in standart gravity units 'g'  |
|  7 | tBodyAcc_std_X  | Time domain, standart deviation of body motion accelaration along x-axis  | Numeric, in standart gravity units 'g'  |
|  8 | tBodyAcc_std_Y  | Time domain, standart deviation of body motion accelaration along y-axis  | Numeric, in standart gravity units 'g'  |
|  9 | tBodyAcc_std_Z  | Time domain, standart deviation of body motion accelaration along z-axis  | Numeric, in standart gravity units 'g'  |
| 10 | tGravityAcc_mean_X  | Time domain, mean gravity accelaration along x-axis  | Numeric, in standart gravity units 'g'  |
| 11 | tGravityAcc_mean_Y  |  Time domain, mean gravity accelaration along y-axis  | Numeric, in standart gravity units 'g'  |
| 12 | tGravityAcc_mean_Z  |  Time domain, mean gravity accelaration along z-axis  | Numeric, in standart gravity units 'g'  |
| 13 | tGravityAcc_std_X  | Time domain, standart deviation of gravity accelaration along x-axis  | Numeric, in standart gravity units 'g'  |
| 14 | tGravityAcc_std_Y  | Time domain, standart deviation of gravity accelaration along y-axis  | Numeric, in standart gravity units 'g'  |
| 15 | tGravityAcc_std_Z  | Time domain, standart deviation of gravity accelaration along z-axis  | Numeric, in standart gravity units 'g'  |
| 16 | tBodyAccJerk_mean_X  | Time domain, mean body motion accelaration jerk (the derivative of accelaration) along x-axis  | Numeric  |
| 17 | tBodyAccJerk_mean_Y  | Time domain, mean body motion accelaration jerk (the derivative of accelaration) along y-axis  | Numeric  |
| 18 | tBodyAccJerk_mean_Z  | Time domain, mean body motion accelaration jerk (the derivative of accelaration) along z-axis  | Numeric  |
| 19 | tBodyAccJerk_std_X  | Time domain, standart deviation of body motion accelaration jerk (the derivative of accelaration) along x-axis  | Numeric  |
| 20 | tBodyAccJerk_std_Y  | Time domain, standart deviation of body motion accelaration jerk (the derivative of accelaration) along y-axis  | Numeric  |
| 21 | tBodyAccJerk_std_Z  | Time domain, standart deviation of body motion accelaration jerk (the derivative of accelaration) along z-axis  | Numeric  |
| 22 | tBodyGyro_mean_X  | Time domain, mean body motion angular velocity along x-axis  | Numeric, in radians/second  |
| 23 | tBodyGyro_mean_Y  |  Time domain, mean body motion angular velocity along y-axis  | Numeric, in radians/second  |
| 24 | tBodyGyro_mean_Z  | Time domain, mean body motion angular velocity along z-axis  | Numeric, in radians/second  |
| 25 | tBodyGyro_std_X  | Time domain, standart deviation of body motion angular velocity along x-axis  | Numeric, in radians/second  |
| 26 | tBodyGyro_std_Y  | Time domain, standart deviation of body motion angular velocity along y-axis  | Numeric, in radians/second  |
| 27 | tBodyGyro_std_Z  |  Time domain, standart deviation of body motion angular velocity along z-axis  | Numeric, in radians/second  |
| 28 | tBodyGyroJerk_mean_X  | Time domain, mean body motion angular jerk (the derivative of angular velocity) along x-axis  | Numeric  |
| 29 | tBodyGyroJerk_mean_Y  | Time domain, mean body motion angular jerk (the derivative of angular velocity) along y-axis  | Numeric  |
| 30 | tBodyGyroJerk_mean_Z  | Time domain, mean body motion angular jerk (the derivative of angular velocity) along z-axis  | Numeric  |
| 31 | tBodyGyroJerk_std_X  | Time domain, standart deviation of body motion angular jerk (the derivative of angular velocity) along x-axis  | Numeric  |
| 32 | tBodyGyroJerk_std_Y  | Time domain, standart deviation of body motion angular jerk (the derivative of angular velocity) along y-axis  | Numeric  |
| 33 | tBodyGyroJerk_std_Z  | Time domain, standart deviation of body motion angular jerk (the derivative of angular velocity) along z-axis  | Numeric  |
| 34 | tBodyAccMag_mean  | Time domain, mean magnitude of body motion acceleration  | Numeric, in standart gravity units 'g'  |
| 35 | tBodyAccMag_std  | Time domain, standart deviation of the magnitude of body motion acceleration  | Numeric, in standart gravity units 'g'  |
| 36 | tGravityAccMag_mean | Time domain, mean magnitude of gravity acceleration  | Numeric, in standart gravity units 'g'  |
| 37 | tGravityAccMag_std | Time domain, standart deviation of the magnitude of gravity acceleration  | Numeric, in standart gravity units 'g'  |
| 38 | tBodyAccJerkMag_mean  | Time domain, mean magnitude of body motion acceleration jerk | Numeric  |
| 39 | tBodyAccJerkMag_std  | Time domain, standart deviation of the magnitude of body motion acceleration jerk  | Numeric  |
| 40 | tBodyGyroMag_mean  | Time domain, mean magnitude of body motion angular velocity  | Numeric, in radians/second  |
| 41 | tBodyGyroMag_std  | Time domain, standart deviation of the magnitude of body motion angular velocity  | Numeric, in radians/second  |
| 42 | tBodyGyroJerkMag_mean  | Time domain, mean magnitude of body motion angular jerk  | Numeric  |
| 43 | tBodyGyroJerkMag_std  | Time domain, standart deviation of the magnitude of body motion angular jerk  | Numeric  |
| 44 | fBodyAcc_mean_X  | Frequency domain[^1], mean body motion accelaration along x-axis  | Numeric  |
| 45 | fBodyAcc_mean_Y | Frequency domain, mean body motion accelaration along y-axis  | Numeric  |
| 46 | fBodyAcc_mean_Z  | Frequency domain, mean body motion accelaration along z-axis  | Numeric  |
| 47 | fBodyAcc_std_X  | Frequency domain, standart deviation of body motion accelaration along x-axis  | Numeric  |
| 48 | fBodyAcc_std_Y  | Frequency domain, standart deviation of body motion accelaration along y-axis  | Numeric  |
| 49 | fBodyAcc_std_Z  | Frequency domain, standart deviation of body motion accelaration along z-axis  | Numeric  |
| 50 | fBodyAccJerk_mean_X  | Frequency domain, mean body motion accelaration jerk (the derivative of accelaration) along x-axis  | Numeric  |
| 51 | fBodyAccJerk_mean_Y  | Frequency domain, mean body motion accelaration jerk (the derivative of accelaration) along y-axis  | Numeric  |
| 52 | fBodyAccJerk_mean_Z  | Frequency domain, mean body motion accelaration jerk (the derivative of accelaration) along z-axis  | Numeric  |
| 53 | fBodyAccJerk_std_X  | Frequency domain, standart deviation of body motion accelaration jerk (the derivative of accelaration) along x-axis  | Numeric  |
| 54 | fBodyAccJerk_std_Y  | Frequency domain, standart deviation of body motion accelaration jerk (the derivative of accelaration) along y-axis  | Numeric  |
| 55 | fBodyAccJerk_std_Z | Frequency domain, standart deviation of body motion accelaration jerk (the derivative of accelaration) along z-axis  | Numeric  |
| 56 | fBodyGyro_mean_X  | Frequency domain, mean body motion angular velocity along x-axis  | Numeric  |
| 57 | fBodyGyro_mean_Y  | Frequency domain, mean body motion angular velocity along y-axis  | Numeric  |
| 58 | fBodyGyro_mean_Z  | Frequency domain, mean body motion angular velocity along z-axis  | Numeric  |
| 59 | fBodyGyro_std_X  | Frequency domain, standart deviation of body motion angular velocity along x-axis  | Numeric  |
| 60 | fBodyGyro_std_Y  | Frequency domain, standart deviation of body motion angular velocity along y-axis  | Numeric  |
| 61 | fBodyGyro_std_Z  | Frequency domain, standart deviation of body motion angular velocity along z-axis  | Numeric  |
| 62 | fBodyAccMag_mean  | Frequency domain, mean magnitude of body motion acceleration  | Numeric  |
| 63 | fBodyAccMag_std  | Frequency domain, standart deviation of the magnitude of body motion acceleration  | Numeric  |
| 64 | fBodyAccJerkMag_mean  | Frequency domain, mean magnitude of body motion acceleration jerk  | Numeric  |
| 65 | fBodyAccJerkMag_std | Frequency domain, standart deviation of the magnitude of body motion acceleration jerk  | Numeric  |
| 66 | fBodyGyroMag_mean  | Frequency domain, mean magnitude of body motion angular velocity  | Numeric  |
| 67 | fBodyGyroMag_std  | Frequency domain, standart deviation of the magnitude of body motion angular velocity  | Numeric  |
| 68 | fBodyGyroJerkMag_mean  | Frequency domain, mean magnitude of body motion angular jerk  | Numeric  |
| 69 | fBodyGyroJerkMag_std  | Frequency domain, standart deviation of the magnitude of body motion angular jerk  | Numeric  |  

***

*Notes:*

[1]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones   
[^1]: Fast Fourier Transform (FFT) applied to the corresponding time domain variable
