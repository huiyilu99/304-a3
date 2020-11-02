#### Preamble ####
# Purpose: Prepare and clean the survey data downloaded from [...UPDATE ME!!!!!]
# Author: Rohan Alexander and Sam Caetano [CHANGE THIS TO YOUR NAME!!!!]
# Data: 22 October 2020
# Contact: rohan.alexander@utoronto.ca [PROBABLY CHANGE THIS ALSO!!!!]
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!


#### Workspace setup ####
library(haven)
library(tidyverse)
# Read in the raw data.
setwd("/Users/apple/Desktop/PS3")
data <- read_dta("usa_00002.dta")


# Add the labels
data <- labelled::to_factor(data)

# Just keep some variables that may be of interest (change 
# this depending on your interests)
red_data <- 
  data %>% 
  select(statefip,
         age, 
         race,
         sex)
         

#### What's next? ####


# Saving the census data as a csv file in my
# working directory
write_csv(red_data, "census_data.csv")



         