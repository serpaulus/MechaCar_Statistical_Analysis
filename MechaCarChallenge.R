
library(dbplyr)#Use the library() function to load the dplyr package.

MechaCar_mpg <- read.csv('MechaCar_mpg.csv')# Import and read in the MechaCar_mpg.csv file as a dataframe

lm(formula = mpg ~ vehicle_length + vehicle_weight +	spoiler_angle +	ground_clearance + AWD, data = MechaCar_mpg)

summary(lm(formula = mpg ~ vehicle_length + vehicle_weight +	spoiler_angle +	ground_clearance + AWD, data = MechaCar_mpg)) #generate summary statistics



