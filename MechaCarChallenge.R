# Deliverable 1

library(dbplyr)#Use the library() function to load the dplyr package.

MechaCar_mpg <- read.csv('MechaCar_mpg.csv')# Import and read in the MechaCar_mpg.csv file as a dataframe

lm(formula = mpg ~ vehicle_length + vehicle_weight +	spoiler_angle +	ground_clearance + AWD, data = MechaCar_mpg)

summary(lm(formula = mpg ~ vehicle_length + vehicle_weight +	spoiler_angle +	ground_clearance + AWD, data = MechaCar_mpg)) #generate summary statistics

#Deliverable 2

Suspension_Coil <- read.csv('Suspension_Coil.csv')

total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Var=var(PSI), SD=sd(PSI), .groups = NULL)

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot )%>%  summarize(Mean=mean(PSI), Median=median(PSI), Var=var(PSI), SD=sd(PSI), .groups = NULL)


#Deliverable 3

t.test(Suspension_Coil$PSI,mu=1500)

lot_1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
lot_2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
lot_3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")
