Codebook
========

Variable names and name patterns
--------------------------------

Some variables names are built according the nature and source of the corresponding registered value data. For example, the Variable TimeBodyAcceleration-mean()-X means that it stores the mean() of the X-Axis of the data registered by the Accelaration signal from the body in the time domain.

Variable names      | Description
--------------------|-------------------------------------------------------
subject             | Subject ID that participated in the study (30 subjects)
activity            | Activity name performed by the subject (6 different activities registered)

Name patterns       | Description
--------------------|-------------------------------------------------------
Time                | Time domain signal 
Frequency           | Frequency domain signal
BodyAcceleration    | Acceleration signal from the body
GravityAcceleration | Acceleration signal from the gravity
Gyroscope           | Measuring instrument
Mean                | Mean value
Std                 | Standard Deviation
Jerk                | Jerk signal
Mag                 | Signal magnitude (Euclidean norm)
X                   | Signals in the X direction
Y                   | Signals in the Y direction
Z                   | Signals in the Z direction

Variable list
-------------

```{r}
"subject"                                     "activity"                                   
"TimeBodyAcceleration-mean()-X"               "TimeBodyAcceleration-mean()-Y"              
"TimeBodyAcceleration-mean()-Z"               "TimeBodyAcceleration-std()-X"               
"TimeBodyAcceleration-std()-Y"                "TimeBodyAcceleration-std()-Z"               
"TimeGravityAcceleration-mean()-X"            "TimeGravityAcceleration-mean()-Y"           
"TimeGravityAcceleration-mean()-Z"            "TimeGravityAcceleration-std()-X"            
"TimeGravityAcceleration-std()-Y"             "TimeGravityAcceleration-std()-Z"            
"TimeBodyAccelerationJerk-mean()-X"           "TimeBodyAccelerationJerk-mean()-Y"          
"TimeBodyAccelerationJerk-mean()-Z"           "TimeBodyAccelerationJerk-std()-X"           
"TimeBodyAccelerationJerk-std()-Y"            "TimeBodyAccelerationJerk-std()-Z"           
"TimeBodyGyroscope-mean()-X"                  "TimeBodyGyroscope-mean()-Y"                 
"TimeBodyGyroscope-mean()-Z"                  "TimeBodyGyroscope-std()-X"                  
"TimeBodyGyroscope-std()-Y"                   "TimeBodyGyroscope-std()-Z"                  
"TimeBodyGyroscopeJerk-mean()-X"              "TimeBodyGyroscopeJerk-mean()-Y"             
"TimeBodyGyroscopeJerk-mean()-Z"              "TimeBodyGyroscopeJerk-std()-X"              
"TimeBodyGyroscopeJerk-std()-Y"               "TimeBodyGyroscopeJerk-std()-Z"              
"TimeBodyAccelerationMag-mean()"              "TimeBodyAccelerationMag-std()"              
"TimeGravityAccelerationMag-mean()"           "TimeGravityAccelerationMag-std()"           
"TimeBodyAccelerationJerkMag-mean()"          "TimeBodyAccelerationJerkMag-std()"          
"TimeBodyGyroscopeMag-mean()"                 "TimeBodyGyroscopeMag-std()"                 
"TimeBodyGyroscopeJerkMag-mean()"             "TimeBodyGyroscopeJerkMag-std()"             
"FrequencyBodyAcceleration-mean()-X"          "FrequencyBodyAcceleration-mean()-Y"         
"FrequencyBodyAcceleration-mean()-Z"          "FrequencyBodyAcceleration-std()-X"          
"FrequencyBodyAcceleration-std()-Y"           "FrequencyBodyAcceleration-std()-Z"          
"FrequencyBodyAccelerationJerk-mean()-X"      "FrequencyBodyAccelerationJerk-mean()-Y"     
"FrequencyBodyAccelerationJerk-mean()-Z"      "FrequencyBodyAccelerationJerk-std()-X"      
"FrequencyBodyAccelerationJerk-std()-Y"       "FrequencyBodyAccelerationJerk-std()-Z"      
"FrequencyBodyGyroscope-mean()-X"             "FrequencyBodyGyroscope-mean()-Y"            
"FrequencyBodyGyroscope-mean()-Z"             "FrequencyBodyGyroscope-std()-X"             
"FrequencyBodyGyroscope-std()-Y"              "FrequencyBodyGyroscope-std()-Z"             
"FrequencyBodyAccelerationMag-mean()"         "FrequencyBodyAccelerationMag-std()"         
"FrequencyBodyBodyAccelerationJerkMag-mean()" "FrequencyBodyBodyAccelerationJerkMag-std()" 
"FrequencyBodyBodyGyroscopeMag-mean()"        "FrequencyBodyBodyGyroscopeMag-std()"        
"FrequencyBodyBodyGyroscopeJerkMag-mean()"    "FrequencyBodyBodyGyroscopeJerkMag-std()"   
```

Activity labels
---------------

```{r}
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
```

Dataset structure
-----------------

The dataset contains 180 observations and 68 variables.

```{r}
 $ subject                                    : int [1:180] 1 1 1 1 1 1 2 2 2 2 ...
 $ activity                                   : Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 1 2 3 4 5 6 1 2 3 4 ...
 $ TimeBodyAcceleration-mean()-X              : num [1:180] 0.277 0.255 0.289 0.261 0.279 ...
 $ TimeBodyAcceleration-mean()-Y              : num [1:180] -0.01738 -0.02395 -0.00992 -0.00131 -0.01614 ...
 $ TimeBodyAcceleration-mean()-Z              : num [1:180] -0.1111 -0.0973 -0.1076 -0.1045 -0.1106 ...
 $ TimeBodyAcceleration-std()-X               : num [1:180] -0.284 -0.355 0.03 -0.977 -0.996 ...
 $ TimeBodyAcceleration-std()-Y               : num [1:180] 0.11446 -0.00232 -0.03194 -0.92262 -0.97319 ...
 $ TimeBodyAcceleration-std()-Z               : num [1:180] -0.26 -0.0195 -0.2304 -0.9396 -0.9798 ...
 $ TimeGravityAcceleration-mean()-X           : num [1:180] 0.935 0.893 0.932 0.832 0.943 ...
 $ TimeGravityAcceleration-mean()-Y           : num [1:180] -0.282 -0.362 -0.267 0.204 -0.273 ...
 $ TimeGravityAcceleration-mean()-Z           : num [1:180] -0.0681 -0.0754 -0.0621 0.332 0.0135 ...
 $ TimeGravityAcceleration-std()-X            : num [1:180] -0.977 -0.956 -0.951 -0.968 -0.994 ...
 $ TimeGravityAcceleration-std()-Y            : num [1:180] -0.971 -0.953 -0.937 -0.936 -0.981 ...
 $ TimeGravityAcceleration-std()-Z            : num [1:180] -0.948 -0.912 -0.896 -0.949 -0.976 ...
 $ TimeBodyAccelerationJerk-mean()-X          : num [1:180] 0.074 0.1014 0.0542 0.0775 0.0754 ...
 $ TimeBodyAccelerationJerk-mean()-Y          : num [1:180] 0.028272 0.019486 0.02965 -0.000619 0.007976 ...
 $ TimeBodyAccelerationJerk-mean()-Z          : num [1:180] -0.00417 -0.04556 -0.01097 -0.00337 -0.00369 ...
 $ TimeBodyAccelerationJerk-std()-X           : num [1:180] -0.1136 -0.4468 -0.0123 -0.9864 -0.9946 ...
 $ TimeBodyAccelerationJerk-std()-Y           : num [1:180] 0.067 -0.378 -0.102 -0.981 -0.986 ...
 $ TimeBodyAccelerationJerk-std()-Z           : num [1:180] -0.503 -0.707 -0.346 -0.988 -0.992 ...
 $ TimeBodyGyroscope-mean()-X                 : num [1:180] -0.0418 0.0505 -0.0351 -0.0454 -0.024 ...
 $ TimeBodyGyroscope-mean()-Y                 : num [1:180] -0.0695 -0.1662 -0.0909 -0.0919 -0.0594 ...
 $ TimeBodyGyroscope-mean()-Z                 : num [1:180] 0.0849 0.0584 0.0901 0.0629 0.0748 ...
 $ TimeBodyGyroscope-std()-X                  : num [1:180] -0.474 -0.545 -0.458 -0.977 -0.987 ...
 $ TimeBodyGyroscope-std()-Y                  : num [1:180] -0.05461 0.00411 -0.12635 -0.96647 -0.98773 ...
 $ TimeBodyGyroscope-std()-Z                  : num [1:180] -0.344 -0.507 -0.125 -0.941 -0.981 ...
 $ TimeBodyGyroscopeJerk-mean()-X             : num [1:180] -0.09 -0.1222 -0.074 -0.0937 -0.0996 ...
 $ TimeBodyGyroscopeJerk-mean()-Y             : num [1:180] -0.0398 -0.0421 -0.044 -0.0402 -0.0441 ...
 $ TimeBodyGyroscopeJerk-mean()-Z             : num [1:180] -0.0461 -0.0407 -0.027 -0.0467 -0.049 ...
 $ TimeBodyGyroscopeJerk-std()-X              : num [1:180] -0.207 -0.615 -0.487 -0.992 -0.993 ...
 $ TimeBodyGyroscopeJerk-std()-Y              : num [1:180] -0.304 -0.602 -0.239 -0.99 -0.995 ...
 $ TimeBodyGyroscopeJerk-std()-Z              : num [1:180] -0.404 -0.606 -0.269 -0.988 -0.992 ...
 $ TimeBodyAccelerationMag-mean()             : num [1:180] -0.137 -0.1299 0.0272 -0.9485 -0.9843 ...
 $ TimeBodyAccelerationMag-std()              : num [1:180] -0.2197 -0.325 0.0199 -0.9271 -0.9819 ...
 $ TimeGravityAccelerationMag-mean()          : num [1:180] -0.137 -0.1299 0.0272 -0.9485 -0.9843 ...
 $ TimeGravityAccelerationMag-std()           : num [1:180] -0.2197 -0.325 0.0199 -0.9271 -0.9819 ...
 $ TimeBodyAccelerationJerkMag-mean()         : num [1:180] -0.1414 -0.4665 -0.0894 -0.9874 -0.9924 ...
 $ TimeBodyAccelerationJerkMag-std()          : num [1:180] -0.0745 -0.479 -0.0258 -0.9841 -0.9931 ...
 $ TimeBodyGyroscopeMag-mean()                : num [1:180] -0.161 -0.1267 -0.0757 -0.9309 -0.9765 ...
 $ TimeBodyGyroscopeMag-std()                 : num [1:180] -0.187 -0.149 -0.226 -0.935 -0.979 ...
 $ TimeBodyGyroscopeJerkMag-mean()            : num [1:180] -0.299 -0.595 -0.295 -0.992 -0.995 ...
 $ TimeBodyGyroscopeJerkMag-std()             : num [1:180] -0.325 -0.649 -0.307 -0.988 -0.995 ...
 $ FrequencyBodyAcceleration-mean()-X         : num [1:180] -0.2028 -0.4043 0.0382 -0.9796 -0.9952 ...
 $ FrequencyBodyAcceleration-mean()-Y         : num [1:180] 0.08971 -0.19098 0.00155 -0.94408 -0.97707 ...
 $ FrequencyBodyAcceleration-mean()-Z         : num [1:180] -0.332 -0.433 -0.226 -0.959 -0.985 ...
 $ FrequencyBodyAcceleration-std()-X          : num [1:180] -0.3191 -0.3374 0.0243 -0.9764 -0.996 ...
 $ FrequencyBodyAcceleration-std()-Y          : num [1:180] 0.056 0.0218 -0.113 -0.9173 -0.9723 ...
 $ FrequencyBodyAcceleration-std()-Z          : num [1:180] -0.28 0.086 -0.298 -0.934 -0.978 ...
 $ FrequencyBodyAccelerationJerk-mean()-X     : num [1:180] -0.1705 -0.4799 -0.0277 -0.9866 -0.9946 ...
 $ FrequencyBodyAccelerationJerk-mean()-Y     : num [1:180] -0.0352 -0.4134 -0.1287 -0.9816 -0.9854 ...
 $ FrequencyBodyAccelerationJerk-mean()-Z     : num [1:180] -0.469 -0.685 -0.288 -0.986 -0.991 ...
 $ FrequencyBodyAccelerationJerk-std()-X      : num [1:180] -0.1336 -0.4619 -0.0863 -0.9875 -0.9951 ...
 $ FrequencyBodyAccelerationJerk-std()-Y      : num [1:180] 0.107 -0.382 -0.135 -0.983 -0.987 ...
 $ FrequencyBodyAccelerationJerk-std()-Z      : num [1:180] -0.535 -0.726 -0.402 -0.988 -0.992 ...
 $ FrequencyBodyGyroscope-mean()-X            : num [1:180] -0.339 -0.493 -0.352 -0.976 -0.986 ...
 $ FrequencyBodyGyroscope-mean()-Y            : num [1:180] -0.1031 -0.3195 -0.0557 -0.9758 -0.989 ...
 $ FrequencyBodyGyroscope-mean()-Z            : num [1:180] -0.2559 -0.4536 -0.0319 -0.9513 -0.9808 ...
 $ FrequencyBodyGyroscope-std()-X             : num [1:180] -0.517 -0.566 -0.495 -0.978 -0.987 ...
 $ FrequencyBodyGyroscope-std()-Y             : num [1:180] -0.0335 0.1515 -0.1814 -0.9623 -0.9871 ...
 $ FrequencyBodyGyroscope-std()-Z             : num [1:180] -0.437 -0.572 -0.238 -0.944 -0.982 ...
 $ FrequencyBodyAccelerationMag-mean()        : num [1:180] -0.1286 -0.3524 0.0966 -0.9478 -0.9854 ...
 $ FrequencyBodyAccelerationMag-std()         : num [1:180] -0.398 -0.416 -0.187 -0.928 -0.982 ...
 $ FrequencyBodyBodyAccelerationJerkMag-mean(): num [1:180] -0.0571 -0.4427 0.0262 -0.9853 -0.9925 ...
 $ FrequencyBodyBodyAccelerationJerkMag-std() : num [1:180] -0.103 -0.533 -0.104 -0.982 -0.993 ...
 $ FrequencyBodyBodyGyroscopeMag-mean()       : num [1:180] -0.199 -0.326 -0.186 -0.958 -0.985 ...
 $ FrequencyBodyBodyGyroscopeMag-std()        : num [1:180] -0.321 -0.183 -0.398 -0.932 -0.978 ...
 $ FrequencyBodyBodyGyroscopeJerkMag-mean()   : num [1:180] -0.319 -0.635 -0.282 -0.99 -0.995 ...
 $ FrequencyBodyBodyGyroscopeJerkMag-std()    : num [1:180] -0.382 -0.694 -0.392 -0.987 -0.995 ...
 - attr(*, "row.names")= int [1:180] 1 2 3 4 5 6 7 8 9 10 ...
 - attr(*, "idvars")= chr [1:2] "subject" "activity"
 - attr(*, "rdimnames")=List of 2
  ..$ :'data.frame':  180 obs. of  2 variables:
  .. ..$ subject : int [1:180] 1 1 1 1 1 1 2 2 2 2 ...
  .. ..$ activity: Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 1 2 3 4 5 6 1 2 3 4 ...
  ..$ :'data.frame':  66 obs. of  1 variable:
  .. ..$ variable: Factor w/ 66 levels "TimeBodyAcceleration-mean()-X",..: 1 2 3 4 5 6 7 8 9 10 ...
```

Dataset sample
--------------

```{r}
  subject         activity TimeBodyAcceleration-mean()-X TimeBodyAcceleration-mean()-Y TimeBodyAcceleration-mean()-Z TimeBodyAcceleration-std()-X TimeBodyAcceleration-std()-Y TimeBodyAcceleration-std()-Z TimeGravityAcceleration-mean()-X
1       1          WALKING                     0.2773308                   -0.01738382                    -0.1111481                   -0.2837403                  0.114461337                  -0.26002790                        0.9352232
2       1 WALKING_UPSTAIRS                     0.2554617                   -0.02395315                    -0.0973020                   -0.3547080                 -0.002320265                  -0.01947924                        0.8933511
  TimeGravityAcceleration-mean()-Y TimeGravityAcceleration-mean()-Z TimeGravityAcceleration-std()-X TimeGravityAcceleration-std()-Y TimeGravityAcceleration-std()-Z TimeBodyAccelerationJerk-mean()-X TimeBodyAccelerationJerk-mean()-Y
1                       -0.2821650                      -0.06810286                      -0.9766096                      -0.9713060                      -0.9477172                        0.07404163                        0.02827211
2                       -0.3621534                      -0.07540294                      -0.9563670                      -0.9528492                      -0.9123794                        0.10137273                        0.01948631
  TimeBodyAccelerationJerk-mean()-Z TimeBodyAccelerationJerk-std()-X TimeBodyAccelerationJerk-std()-Y TimeBodyAccelerationJerk-std()-Z TimeBodyGyroscope-mean()-X TimeBodyGyroscope-mean()-Y TimeBodyGyroscope-mean()-Z
1                      -0.004168406                       -0.1136156                        0.0670025                       -0.5026998                -0.04183096                -0.06953005                 0.08494482
2                      -0.045562545                       -0.4468439                       -0.3782744                       -0.7065935                 0.05054938                -0.16617002                 0.05835955
  TimeBodyGyroscope-std()-X TimeBodyGyroscope-std()-Y TimeBodyGyroscope-std()-Z TimeBodyGyroscopeJerk-mean()-X TimeBodyGyroscopeJerk-mean()-Y TimeBodyGyroscopeJerk-mean()-Z TimeBodyGyroscopeJerk-std()-X TimeBodyGyroscopeJerk-std()-Y
1                -0.4735355              -0.054607769                -0.3442666                    -0.08999754                    -0.03984287                    -0.04613093                    -0.2074219                    -0.3044685
2                -0.5448711               0.004105184                -0.5071687                    -0.12223277                    -0.04214859                    -0.04071255                    -0.6147865                    -0.6016967
  TimeBodyGyroscopeJerk-std()-Z TimeBodyAccelerationMag-mean() TimeBodyAccelerationMag-std() TimeGravityAccelerationMag-mean() TimeGravityAccelerationMag-std() TimeBodyAccelerationJerkMag-mean() TimeBodyAccelerationJerkMag-std() TimeBodyGyroscopeMag-mean()
1                    -0.4042555                     -0.1369712                    -0.2196886                        -0.1369712                       -0.2196886                         -0.1414288                       -0.07447175                  -0.1609796
2                    -0.6063320                     -0.1299276                    -0.3249709                        -0.1299276                       -0.3249709                         -0.4665034                       -0.47899162                  -0.1267356
  TimeBodyGyroscopeMag-std() TimeBodyGyroscopeJerkMag-mean() TimeBodyGyroscopeJerkMag-std() FrequencyBodyAcceleration-mean()-X FrequencyBodyAcceleration-mean()-Y FrequencyBodyAcceleration-mean()-Z FrequencyBodyAcceleration-std()-X
1                 -0.1869784                      -0.2987037                     -0.3253249                         -0.2027943                         0.08971273                         -0.3315601                        -0.3191347
2                 -0.1486193                      -0.5948829                     -0.6485530                         -0.4043218                        -0.19097672                         -0.4333497                        -0.3374282
  FrequencyBodyAcceleration-std()-Y FrequencyBodyAcceleration-std()-Z FrequencyBodyAccelerationJerk-mean()-X FrequencyBodyAccelerationJerk-mean()-Y FrequencyBodyAccelerationJerk-mean()-Z FrequencyBodyAccelerationJerk-std()-X
1                        0.05604001                       -0.27968675                             -0.1705470                            -0.03522552                             -0.4689992                            -0.1335866
2                        0.02176951                        0.08595655                             -0.4798752                            -0.41344459                             -0.6854744                            -0.4619070
  FrequencyBodyAccelerationJerk-std()-Y FrequencyBodyAccelerationJerk-std()-Z FrequencyBodyGyroscope-mean()-X FrequencyBodyGyroscope-mean()-Y FrequencyBodyGyroscope-mean()-Z FrequencyBodyGyroscope-std()-X FrequencyBodyGyroscope-std()-Y
1                             0.1067399                            -0.5347134                      -0.3390322                      -0.1030594                      -0.2559409                     -0.5166919                    -0.03350816
2                            -0.3817771                            -0.7260402                      -0.4926117                      -0.3194746                      -0.4535972                     -0.5658925                     0.15153891
  FrequencyBodyGyroscope-std()-Z FrequencyBodyAccelerationMag-mean() FrequencyBodyAccelerationMag-std() FrequencyBodyBodyAccelerationJerkMag-mean() FrequencyBodyBodyAccelerationJerkMag-std() FrequencyBodyBodyGyroscopeMag-mean()
1                     -0.4365622                          -0.1286235                         -0.3980326                                  -0.0571194                                 -0.1034924                           -0.1992526
2                     -0.5717078                          -0.3523959                         -0.4162601                                  -0.4426522                                 -0.5330599                           -0.3259615
  FrequencyBodyBodyGyroscopeMag-std() FrequencyBodyBodyGyroscopeJerkMag-mean() FrequencyBodyBodyGyroscopeJerkMag-std()
1                          -0.3210180                               -0.3193086                              -0.3816019
2                          -0.1829855                               -0.6346651                              -0.6939305
```

Summary of variables
--------------------

```{r} 
 subject        activity                TimeBodyAcceleration-mean()-X TimeBodyAcceleration-mean()-Y TimeBodyAcceleration-mean()-Z
 Min.   : 1.0   WALKING           :30   Min.   :0.2216                Min.   :-0.040514             Min.   :-0.15251             
 1st Qu.: 8.0   WALKING_UPSTAIRS  :30   1st Qu.:0.2712                1st Qu.:-0.020022             1st Qu.:-0.11207             
 Median :15.5   WALKING_DOWNSTAIRS:30   Median :0.2770                Median :-0.017262             Median :-0.10819             
 Mean   :15.5   SITTING           :30   Mean   :0.2743                Mean   :-0.017876             Mean   :-0.10916             
 3rd Qu.:23.0   STANDING          :30   3rd Qu.:0.2800                3rd Qu.:-0.014936             3rd Qu.:-0.10443             
 Max.   :30.0   LAYING            :30   Max.   :0.3015                Max.   :-0.001308             Max.   :-0.07538             
 TimeBodyAcceleration-std()-X TimeBodyAcceleration-std()-Y TimeBodyAcceleration-std()-Z TimeGravityAcceleration-mean()-X
 Min.   :-0.9961              Min.   :-0.99024             Min.   :-0.9877              Min.   :-0.6800                 
 1st Qu.:-0.9799              1st Qu.:-0.94205             1st Qu.:-0.9498              1st Qu.: 0.8376                 
 Median :-0.7526              Median :-0.50897             Median :-0.6518              Median : 0.9208                 
 Mean   :-0.5577              Mean   :-0.46046             Mean   :-0.5756              Mean   : 0.6975                 
 3rd Qu.:-0.1984              3rd Qu.:-0.03077             3rd Qu.:-0.2306              3rd Qu.: 0.9425                 
 Max.   : 0.6269              Max.   : 0.61694             Max.   : 0.6090              Max.   : 0.9745                 
 TimeGravityAcceleration-mean()-Y TimeGravityAcceleration-mean()-Z TimeGravityAcceleration-std()-X TimeGravityAcceleration-std()-Y
 Min.   :-0.47989                 Min.   :-0.49509                 Min.   :-0.9968                 Min.   :-0.9942                
 1st Qu.:-0.23319                 1st Qu.:-0.11726                 1st Qu.:-0.9825                 1st Qu.:-0.9711                
 Median :-0.12782                 Median : 0.02384                 Median :-0.9695                 Median :-0.9590                
 Mean   :-0.01621                 Mean   : 0.07413                 Mean   :-0.9638                 Mean   :-0.9524                
 3rd Qu.: 0.08773                 3rd Qu.: 0.14946                 3rd Qu.:-0.9509                 3rd Qu.:-0.9370                
 Max.   : 0.95659                 Max.   : 0.95787                 Max.   :-0.8296                 Max.   :-0.6436                
 TimeGravityAcceleration-std()-Z TimeBodyAccelerationJerk-mean()-X TimeBodyAccelerationJerk-mean()-Y
 Min.   :-0.9910                 Min.   :0.04269                   Min.   :-0.0386872               
 1st Qu.:-0.9605                 1st Qu.:0.07396                   1st Qu.: 0.0004664               
 Median :-0.9450                 Median :0.07640                   Median : 0.0094698               
 Mean   :-0.9364                 Mean   :0.07947                   Mean   : 0.0075652               
 3rd Qu.:-0.9180                 3rd Qu.:0.08330                   3rd Qu.: 0.0134008               
 Max.   :-0.6102                 Max.   :0.13019                   Max.   : 0.0568186               
 TimeBodyAccelerationJerk-mean()-Z TimeBodyAccelerationJerk-std()-X TimeBodyAccelerationJerk-std()-Y TimeBodyAccelerationJerk-std()-Z
 Min.   :-0.067458                 Min.   :-0.9946                  Min.   :-0.9895                  Min.   :-0.99329                
 1st Qu.:-0.010601                 1st Qu.:-0.9832                  1st Qu.:-0.9724                  1st Qu.:-0.98266                
 Median :-0.003861                 Median :-0.8104                  Median :-0.7756                  Median :-0.88366                
 Mean   :-0.004953                 Mean   :-0.5949                  Mean   :-0.5654                  Mean   :-0.73596                
 3rd Qu.: 0.001958                 3rd Qu.:-0.2233                  3rd Qu.:-0.1483                  3rd Qu.:-0.51212                
 Max.   : 0.038053                 Max.   : 0.5443                  Max.   : 0.3553                  Max.   : 0.03102                
 TimeBodyGyroscope-mean()-X TimeBodyGyroscope-mean()-Y TimeBodyGyroscope-mean()-Z TimeBodyGyroscope-std()-X TimeBodyGyroscope-std()-Y
 Min.   :-0.20578           Min.   :-0.20421           Min.   :-0.07245           Min.   :-0.9943           Min.   :-0.9942          
 1st Qu.:-0.04712           1st Qu.:-0.08955           1st Qu.: 0.07475           1st Qu.:-0.9735           1st Qu.:-0.9629          
 Median :-0.02871           Median :-0.07318           Median : 0.08512           Median :-0.7890           Median :-0.8017          
 Mean   :-0.03244           Mean   :-0.07426           Mean   : 0.08744           Mean   :-0.6916           Mean   :-0.6533          
 3rd Qu.:-0.01676           3rd Qu.:-0.06113           3rd Qu.: 0.10177           3rd Qu.:-0.4414           3rd Qu.:-0.4196          
 Max.   : 0.19270           Max.   : 0.02747           Max.   : 0.17910           Max.   : 0.2677           Max.   : 0.4765          
 TimeBodyGyroscope-std()-Z TimeBodyGyroscopeJerk-mean()-X TimeBodyGyroscopeJerk-mean()-Y TimeBodyGyroscopeJerk-mean()-Z
 Min.   :-0.9855           Min.   :-0.15721               Min.   :-0.07681               Min.   :-0.092500             
 1st Qu.:-0.9609           1st Qu.:-0.10322               1st Qu.:-0.04552               1st Qu.:-0.061725             
 Median :-0.8010           Median :-0.09868               Median :-0.04112               Median :-0.053430             
 Mean   :-0.6164           Mean   :-0.09606               Mean   :-0.04269               Mean   :-0.054802             
 3rd Qu.:-0.3106           3rd Qu.:-0.09110               3rd Qu.:-0.03842               3rd Qu.:-0.048985             
 Max.   : 0.5649           Max.   :-0.02209               Max.   :-0.01320               Max.   :-0.006941             
 TimeBodyGyroscopeJerk-std()-X TimeBodyGyroscopeJerk-std()-Y TimeBodyGyroscopeJerk-std()-Z TimeBodyAccelerationMag-mean()
 Min.   :-0.9965               Min.   :-0.9971               Min.   :-0.9954               Min.   :-0.9865               
 1st Qu.:-0.9800               1st Qu.:-0.9832               1st Qu.:-0.9848               1st Qu.:-0.9573               
 Median :-0.8396               Median :-0.8942               Median :-0.8610               Median :-0.4829               
 Mean   :-0.7036               Mean   :-0.7636               Mean   :-0.7096               Mean   :-0.4973               
 3rd Qu.:-0.4629               3rd Qu.:-0.5861               3rd Qu.:-0.4741               3rd Qu.:-0.0919               
 Max.   : 0.1791               Max.   : 0.2959               Max.   : 0.1932               Max.   : 0.6446               
 TimeBodyAccelerationMag-std() TimeGravityAccelerationMag-mean() TimeGravityAccelerationMag-std() TimeBodyAccelerationJerkMag-mean()
 Min.   :-0.9865               Min.   :-0.9865                   Min.   :-0.9865                  Min.   :-0.9928                   
 1st Qu.:-0.9430               1st Qu.:-0.9573                   1st Qu.:-0.9430                  1st Qu.:-0.9807                   
 Median :-0.6074               Median :-0.4829                   Median :-0.6074                  Median :-0.8168                   
 Mean   :-0.5439               Mean   :-0.4973                   Mean   :-0.5439                  Mean   :-0.6079                   
 3rd Qu.:-0.2090               3rd Qu.:-0.0919                   3rd Qu.:-0.2090                  3rd Qu.:-0.2456                   
 Max.   : 0.4284               Max.   : 0.6446                   Max.   : 0.4284                  Max.   : 0.4345                   
 TimeBodyAccelerationJerkMag-std() TimeBodyGyroscopeMag-mean() TimeBodyGyroscopeMag-std() TimeBodyGyroscopeJerkMag-mean()
 Min.   :-0.9946                   Min.   :-0.9807             Min.   :-0.9814            Min.   :-0.99732               
 1st Qu.:-0.9765                   1st Qu.:-0.9461             1st Qu.:-0.9476            1st Qu.:-0.98515               
 Median :-0.8014                   Median :-0.6551             Median :-0.7420            Median :-0.86479               
 Mean   :-0.5842                   Mean   :-0.5652             Mean   :-0.6304            Mean   :-0.73637               
 3rd Qu.:-0.2173                   3rd Qu.:-0.2159             3rd Qu.:-0.3602            3rd Qu.:-0.51186               
 Max.   : 0.4506                   Max.   : 0.4180             Max.   : 0.3000            Max.   : 0.08758               
 TimeBodyGyroscopeJerkMag-std() FrequencyBodyAcceleration-mean()-X FrequencyBodyAcceleration-mean()-Y
 Min.   :-0.9977                Min.   :-0.9952                    Min.   :-0.98903                  
 1st Qu.:-0.9805                1st Qu.:-0.9787                    1st Qu.:-0.95361                  
 Median :-0.8809                Median :-0.7691                    Median :-0.59498                  
 Mean   :-0.7550                Mean   :-0.5758                    Mean   :-0.48873                  
 3rd Qu.:-0.5767                3rd Qu.:-0.2174                    3rd Qu.:-0.06341                  
 Max.   : 0.2502                Max.   : 0.5370                    Max.   : 0.52419                  
 FrequencyBodyAcceleration-mean()-Z FrequencyBodyAcceleration-std()-X FrequencyBodyAcceleration-std()-Y
 Min.   :-0.9895                    Min.   :-0.9966                   Min.   :-0.99068                 
 1st Qu.:-0.9619                    1st Qu.:-0.9820                   1st Qu.:-0.94042                 
 Median :-0.7236                    Median :-0.7470                   Median :-0.51338                 
 Mean   :-0.6297                    Mean   :-0.5522                   Mean   :-0.48148                 
 3rd Qu.:-0.3183                    3rd Qu.:-0.1966                   3rd Qu.:-0.07913                 
 Max.   : 0.2807                    Max.   : 0.6585                   Max.   : 0.56019                 
 FrequencyBodyAcceleration-std()-Z FrequencyBodyAccelerationJerk-mean()-X FrequencyBodyAccelerationJerk-mean()-Y
 Min.   :-0.9872                   Min.   :-0.9946                        Min.   :-0.9894                       
 1st Qu.:-0.9459                   1st Qu.:-0.9828                        1st Qu.:-0.9725                       
 Median :-0.6441                   Median :-0.8126                        Median :-0.7817                       
 Mean   :-0.5824                   Mean   :-0.6139                        Mean   :-0.5882                       
 3rd Qu.:-0.2655                   3rd Qu.:-0.2820                        3rd Qu.:-0.1963                       
 Max.   : 0.6871                   Max.   : 0.4743                        Max.   : 0.2767                       
 FrequencyBodyAccelerationJerk-mean()-Z FrequencyBodyAccelerationJerk-std()-X FrequencyBodyAccelerationJerk-std()-Y
 Min.   :-0.9920                        Min.   :-0.9951                       Min.   :-0.9905                      
 1st Qu.:-0.9796                        1st Qu.:-0.9847                       1st Qu.:-0.9737                      
 Median :-0.8707                        Median :-0.8254                       Median :-0.7852                      
 Mean   :-0.7144                        Mean   :-0.6121                       Mean   :-0.5707                      
 3rd Qu.:-0.4697                        3rd Qu.:-0.2475                       3rd Qu.:-0.1685                      
 Max.   : 0.1578                        Max.   : 0.4768                       Max.   : 0.3498                      
 FrequencyBodyAccelerationJerk-std()-Z FrequencyBodyGyroscope-mean()-X FrequencyBodyGyroscope-mean()-Y
 Min.   :-0.993108                     Min.   :-0.9931                 Min.   :-0.9940                
 1st Qu.:-0.983747                     1st Qu.:-0.9697                 1st Qu.:-0.9700                
 Median :-0.895121                     Median :-0.7300                 Median :-0.8141                
 Mean   :-0.756489                     Mean   :-0.6367                 Mean   :-0.6767                
 3rd Qu.:-0.543787                     3rd Qu.:-0.3387                 3rd Qu.:-0.4458                
 Max.   :-0.006236                     Max.   : 0.4750                 Max.   : 0.3288                
 FrequencyBodyGyroscope-mean()-Z FrequencyBodyGyroscope-std()-X FrequencyBodyGyroscope-std()-Y FrequencyBodyGyroscope-std()-Z
 Min.   :-0.9860                 Min.   :-0.9947                Min.   :-0.9944                Min.   :-0.9867               
 1st Qu.:-0.9624                 1st Qu.:-0.9750                1st Qu.:-0.9602                1st Qu.:-0.9643               
 Median :-0.7909                 Median :-0.8086                Median :-0.7964                Median :-0.8224               
 Mean   :-0.6044                 Mean   :-0.7110                Mean   :-0.6454                Mean   :-0.6577               
 3rd Qu.:-0.2635                 3rd Qu.:-0.4813                3rd Qu.:-0.4154                3rd Qu.:-0.3916               
 Max.   : 0.4924                 Max.   : 0.1966                Max.   : 0.6462                Max.   : 0.5225               
 FrequencyBodyAccelerationMag-mean() FrequencyBodyAccelerationMag-std() FrequencyBodyBodyAccelerationJerkMag-mean()
 Min.   :-0.9868                     Min.   :-0.9876                    Min.   :-0.9940                            
 1st Qu.:-0.9560                     1st Qu.:-0.9452                    1st Qu.:-0.9770                            
 Median :-0.6703                     Median :-0.6513                    Median :-0.7940                            
 Mean   :-0.5365                     Mean   :-0.6210                    Mean   :-0.5756                            
 3rd Qu.:-0.1622                     3rd Qu.:-0.3654                    3rd Qu.:-0.1872                            
 Max.   : 0.5866                     Max.   : 0.1787                    Max.   : 0.5384                            
 FrequencyBodyBodyAccelerationJerkMag-std() FrequencyBodyBodyGyroscopeMag-mean() FrequencyBodyBodyGyroscopeMag-std()
 Min.   :-0.9944                            Min.   :-0.9865                      Min.   :-0.9815                    
 1st Qu.:-0.9752                            1st Qu.:-0.9616                      1st Qu.:-0.9488                    
 Median :-0.8126                            Median :-0.7657                      Median :-0.7727                    
 Mean   :-0.5992                            Mean   :-0.6671                      Mean   :-0.6723                    
 3rd Qu.:-0.2668                            3rd Qu.:-0.4087                      3rd Qu.:-0.4277                    
 Max.   : 0.3163                            Max.   : 0.2040                      Max.   : 0.2367                    
 FrequencyBodyBodyGyroscopeJerkMag-mean() FrequencyBodyBodyGyroscopeJerkMag-std()
 Min.   :-0.9976                          Min.   :-0.9976                        
 1st Qu.:-0.9813                          1st Qu.:-0.9802                        
 Median :-0.8779                          Median :-0.8941                        
 Mean   :-0.7564                          Mean   :-0.7715                        
 3rd Qu.:-0.5831                          3rd Qu.:-0.6081                        
 Max.   : 0.1466                          Max.   : 0.2878        
 ```
 