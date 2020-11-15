# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    * Variables that contribute to the non-random varience of mpg values in the dataset include vehicle_length and ground_clearence.

2. Is the slope of the linear model considered to be zero? Why or why not?


    *  The slope of the linear model would not be considered zero since the significnace level of the regression analsyis is less than 0.05 
(p=0.0000000000535). 

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    *  This linear model predicts mpg of MechaCar prototypes effectively wiht an R squared value of 0.7149 indicating that the model explains 71% of the varience. 

## Summary Statistics on Suspension Coils


The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

1. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
* In total, the varience does not exceed 100 pounds per square inch. total varience for PSI = 62.29356

![Total_Summary](https://raw.githubusercontent.com/asanchez116/MechaCar_Statistical_Analysis/main/Resources/total_summary_screenshot.png)
* Varience across the lots meet the design specifications for two of the three lots. Lot 3 failed with varience at 170.2861224.   

![Lot_Summary](https://raw.githubusercontent.com/asanchez116/MechaCar_Statistical_Analysis/main/Resources/lot_summary_screenshot.png)

## T-Tests on Suspension Coils

* All Lots were not significantly different but were approaching significance with p value = 0.06028. 



![All_Lots_ttest](https://raw.githubusercontent.com/asanchez116/MechaCar_Statistical_Analysis/main/Resources/All_Lots_ttest.png)

* Results from Lot 1 show a non significant differnece between the mean PSI for lot 1 and the population mean PSI = 1500 with a pvalue = 1

![Lot_1_ttest](https://raw.githubusercontent.com/asanchez116/MechaCar_Statistical_Analysis/main/Resources/Lot_1_ttest.png)

* Results for lot 2 show a non significant difference between the mean PSI for lot_2 and the population mean PSI = 1500 with a pvalue = 0.6072

![Lot_2_ttest](https://raw.githubusercontent.com/asanchez116/MechaCar_Statistical_Analysis/main/Resources/lot_2_ttest.png)

* Results for Lot_3 show a significant difference between the mean PSI for Lot_3 and the population mean PSI = 1500 with a pvalue = 0.04168, sample mean = 1496.14 and confidence interval = 1492.431 1499.849

![Lot_3_ttest](https://raw.githubusercontent.com/asanchez116/MechaCar_Statistical_Analysis/main/Resources/Lot_3_ttest.png)