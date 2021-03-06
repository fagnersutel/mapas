library(OpenStreetMap)
library(rgdal)
map <- openmap(c(70,-179), c(-70,179))
plot(map)
map <- openmap(c(70,-179), c(-70,179),type='bing')
plot(map)

library(UScensus2000)
data(california.tract)
lat <- c(43.834526782236814,30.334953881988564)
lon <- c(-131.0888671875 ,-107.8857421875)
southwest <- openmap(c(lat[1],lon[1]),c(lat[2],lon[2]),zoom=6,'osm')
california.tract <- spTransform(california.tract,osm())
plot(southwest)
plot(california.tract,add=TRUE,col=(california.tract@data$med.age>40)+4)