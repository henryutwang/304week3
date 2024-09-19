#### Preamble ####
# Purpose: Tests the simulated data
# Author: weiheng wang
# Date: 19 September 2024
# Contact: weiheng.wang@mail.utoronto.ca
# License: MIT

# Pre-requisites: Need to have simulated data
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("./data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NA
any(is.na(data$number_of_marriage))
