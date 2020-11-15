library(tidyverse)
setwd("~/Desktop/MechaCar_Statistical_Analysis")

dataframe <- read_csv('MechaCar_mpg.csv')

options(scipen = 999)

head(dataframe)

model <- lm(data = dataframe, mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD)
summary(model)

dataframe2 <- read_csv("Suspension_coil.csv")
head(dataframe2)

total_summary<- summarize(dataframe2, mean_PSI = mean(PSI), 
                          median_PSI = median(PSI), varience_PSI = var(PSI), 
                          sd_PSI = sd(PSI))

total_summary

lot_summary <- dataframe2 %>%  group_by(Manufacturing_Lot) %>%  
  summarize(mean_PSI = mean(PSI), median_PSI = median(PSI), var_PSI = var(PSI), sd_PSI = sd(PSI), .groups='keep')

lot_summary             



all_Lots <- t.test(dataframe2$PSI, mu=mean(dataframe2$PSI))
all_Lots

#subset dataframe

lot_1 <- subset(dataframe2, Manufacturing_Lot == 'Lot1')
lot_2 <- subset(dataframe2, Manufacturing_Lot=='Lot2')
lot_3 <- subset(dataframe2, Maufacturing_lot = 'Lot3')


Lot_1_ttest <- t.test(lot_1$PSI, mu=mean(dataframe2$PSI))
Lot_2_ttest<- t.test(lot_2$PSI, mu=mean(dataframe2$PSI))
Lot_3_ttest<- t.test(lot_3$PSI, mu=mean(dataframe2$PSI))


Lot_1_ttest
Lot_2_ttest
Lot_3_ttest
