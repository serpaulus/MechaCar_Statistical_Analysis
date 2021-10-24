
## Linear Regression to Predict MPG

The  linear Regression to Predict MPG results show:

1)  Vehicle weight, spoiler angle and the AWD transmission provide a non-random amount of variance to the mpg values in the dataset
2) The slope of the linear model is not considered to be zero because the p-value is 5.35e-11 which smaller than 0.05
3) The linear model does not predict mpg of MechaCar prototypes effectively because  the values that provide a non-random amount of variance have a week correlation Pr value

![LR]( https://github.com/serpaulus/MechaCar_Statistical_Analysis/blob/main/Resources/Linear%20Regression.png)

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  Technical analysis shows that this specification is not exceeded when analyzing all manufacturing lots given a variance of 62.29356.

![1](https://github.com/serpaulus/MechaCar_Statistical_Analysis/blob/main/Resources/Deliv2_1.png)

NOTE: Technical analysis shows that this specification is t exceeded when analyzing manufacturing lots individually. Lot 3 shows an variance of 170.3.

![2](https://github.com/serpaulus/MechaCar_Statistical_Analysis/blob/main/Resources/Deliv2_2.png)

## T-Tests on Suspension Coils

A t.test() function to determine if the PSI across all  Suspension Coils manufacturing lots in is statistically different from the population mean of 1,500 pounds per square inch.

As shown below the t.test shows a slight statistical difference when perform across the entire data set. When compared by lot only lot 1 showed a mean equal to 1500 PSI; still lot 2 and lo3 3 are fairly close. It is recommendable to check the latest engineering safety data to validate that the suspension coil PSI are still within acceptable ranges.  

#### View(all_lost)
t.test(Suspension_Coil$PSI, mu=mean(Suspension_Coil$PSI))

	One Sample t-test

data:  Suspension_Coil$PSI

t = 0, df = 149, p-value = 1

alternative hypothesis: true mean is not equal to 1498.78

95 percent confidence interval:

1497.507 1500.053

sample estimates:

mean of x 1498.78

#### lot 1
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot1"),mu=mean(Suspension_Coil$PSI))

One Sample t-test

data:  subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot1")

t = 8.7161, df = 49, p-value = 1.568e-11

alternative hypothesis: true mean is not equal to 1498.78

95 percent confidence interval:

1499.719 1500.281

sample estimates:

mean of x 1500 

#### lot 2
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot2"),mu=mean(Suspension_Coil$PSI))

One Sample t-test

data:  subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot2")

t = 3.6739, df = 49, p-value = 0.0005911

alternative hypothesis: true mean is not equal to 1498.78

95 percent confidence interval:

1499.423 1500.977

sample estimates:

mean of x 1500.2 

#### lot 3 
 t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot3"),mu=mean(Suspension_Coil$PSI))

One Sample t-test

data:  subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot3")

t = -1.4305, df = 49, p-value = 0.1589

alternative hypothesis: true mean is not equal to 1498.78

95 percent confidence interval:

1492.431 1499.849

sample estimates:

mean of x 1496.14 

## Study Design: MechaCar vs Competition

The objective of the proposed study fuel efficiency in MPG  MechaCar vs Competition.

H0 : MechaCar  fuel efficiency  MPG is  below the median for vehicles in its class

H1:  MechaCar fuel efficiency MPG is above the median for vehicles in its class

A two sample t.test will be conducted since one variable MPG will be and there will be to data sets MechaCars MPG vs the calculated median for all vehicles with in its class

This will be accomplished  by analyzing MPG miles per galon data from the data published  by the Environmental Protection Agency (EPA)
