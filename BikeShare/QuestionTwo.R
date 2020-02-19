##Question 2: What is the most common Start station (the station with the most number of trips)?
##Data Visualizations
popularStation <- function(data)
{
  ggplot(data, aes(x=Start.Station))+
    geom_bar(stat = "count") +
    labs(x = "Start Station", y="Number of trips")+
    ggtitle("Number of trips per station")+
    coord_cartesian(ylim=c(2500,7000))
}
popularStation(chi)
popularStation(ny)
popularStation(wash)

##Interpretation :
#

##Summary Statistics:
getMode(chi$Start.Station)
getMode(ny$Start.Station)
getMode(wash$Start.Station)
##Sammury Describtion:
#Using the getMode function, we can get the most frequent 'Start.Station'
#For Chicago : Streeter Dr & Grand Ave
#For NewYork City : Pershing Square North
#For Washington : Columbus Circle / Union Station
#
