#### Preamble ####
# Purpose: Prepare and clean the survey data downloaded from Democracy Fund + UCLA Nationscape ‘Full Data Set’:
# https://www.voterstudygroup.org/publication/nationscape-data-set.
# Author: Ying Xiong, Yixin Liang, Huiyi Lu, Deyu Meng
# Data: 2 November 2020
# Contact: jessica.xiong@mail.utoronto.ca; deyu.meng@mail.utoronto.ca; yixin.liang@mail.utoronto.ca;huiyi.lu@mail.utoronto.ca


#### Workspace setup ####
library(haven)
library(tidyverse)
setwd("/Users/apple/Desktop/PS3")
# Read in the raw data
raw_data <- read_dta("ns20200625.dta")
raw_data <- labelled::to_factor(raw_data)
reduced_data <- 
  raw_data %>% 
  select(interest,
         registration,
         vote_2016,
         vote_intention,
         vote_2020,
         ideo5,
         employment,
         foreign_born,
         gender,
         census_region,
         hispanic,
         race_ethnicity,
         household_income,
         education,
         state,
         congress_district,
         age)


reduced_data<-
  reduced_data %>%
  mutate(vote_trump = 
           ifelse(vote_2020=="Donald Trump", 1, 0),
         vote_biden = ifelse(vote_2020=="Joe Biden", 1, 0))

# Saving the survey/sample data as a csv file in my working directory
write_csv(reduced_data, "survey_data.csv")


