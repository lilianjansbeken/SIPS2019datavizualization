install.packages("readr")
library(readr)
full_trains <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-26/full_trains.csv")
install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)

install.packages("gghighlight")
library(gghighlight)
full_trains %>% 
  ggplot(aes(x = `journey_time_avg`)) + 
  geom_histogram() +
  gghighlight(service== 'National')+ 
  labs(x = "Journey Time (mins)", y = "Number of Instances", 
       title = "Histogram of average journey time for trains on the SNCF network")