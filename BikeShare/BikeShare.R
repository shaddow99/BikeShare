#Reading the datasets
ny = read.csv('new-york-city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

#importing libraries
library(ggplot2)
library(scales)
#############


#Question 1: What is the most common month of travel in the 3 cities?
#Data Visualizations
popularMonth <- function(data)
{
  d = data
  #convert the 'Start.time' column into DateTime
  d$Start.Time <- as.POSIXct(d$Start.Time)
  
  #Count the number of trip for each month
  ggplot(d, aes(format(Start.Time, "%Y-%m"))) +
    geom_bar(stat = "count") +
    labs(x = "Month of the year", y="Number of trips")+
    ggtitle("Number of trips per month (first six months of 2017)")
}
popularMonth(chi)
popularMonth(ny)
popularMonth(wash)
#

  
