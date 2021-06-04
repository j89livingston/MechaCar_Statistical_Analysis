#Deliverable 1
#load dplyr package
library(dplyr)
#import and read CSV file
mechaCar <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
#perform linear regression for MPG
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar)
#summary for MPG
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar))

# Deliverable 2
# import and read CSV file
susCoil <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
#Summary with mean, median, mode, ST.DEV
susSummary <- susCoil %>% summarise(mean=mean(PSI), median=median(PSI), variance=var(PSI), SD=sd(PSI))
#lot summary
susLot <- susCoil %>% group_by(Manufacturing_Lot) %>% summarise(mean=mean(PSI), median=median(PSI), variance=var(PSI), SD=sd(PSI))

# Deliverable 3
# t test for all lots
t.test(susCoil$PSI, mu = 1500)
# lot 1 t test
t.test(subset(susCoil, Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
# lot 2 t test
t.test(subset(susCoil, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
#lot 3 t test
t.test(subset(susCoil, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)