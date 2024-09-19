#### Preamble ####
# Purpose: Simulate data
# Author: weiheng wang
# Date: 19 September 2024
# Contact: weiheng.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(304)
start_date <- as.Date("2023-01-01")
end_date <- as.Date("2023-12-31")
number_of_dates <- 100

data <-
  tibble(
    date = as.Date(runif(n = number_of_dates, min = as.numeric(start_date), max = as.numeric(end_date))), 
    number_of_marriage = rpois(n = number_of_dates, lambda = 15),
    
  )


write_csv(data, file = "./data/raw_data/simulated.csv")
