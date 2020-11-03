#### Preamble ####
# Purpose: Prepare and clean the survey data downloaded from IPUMS USA.
# https://usa.ipums.org/usa/index.shtml 
# Author: Ying Xiong, Yixin Liang, Huiyi Lu, Deyu Meng
# Data: 2 November 2020
# Contact: jessica.xiong@mail.utoronto.ca; deyu.meng@mail.utoronto.ca; yixin.liang@mail.utoronto.ca; huiyi.lu@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(haven)
library(tidyverse)
# Read in the raw data.
setwd("/Users/apple/Desktop/PS3")
data <- read_dta("usa_00002.dta")


data <- labelled::to_factor(data)

red_data <- 
  data %>% 
  select(statefip,
         age, 
         race,
         sex)
         

# Saving the census data as a csv file in my working directory
write_csv(red_data, "census_data.csv")



         