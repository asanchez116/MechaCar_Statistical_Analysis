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
                          sd_PSI <- sd(PSI), groups='keep')

total_summary

lot_summary <- dataframe2 %>%  group_by(Manufacturing_Lot) %>%  
  summarize(mean_PSI = mean(PSI), median_PSI = median(PSI), var_PSI = var(PSI), sd_PSI = sd(PSI), .groups='keep')

lot_summary                                                                        