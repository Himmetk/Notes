


###Install ggmap package

install.packages("devtools")
library(devtools)
install.packages("ggmap", type = "source")
library(ggmap)
install_version("ggplot2", type = "source")
library(ggplot2)
install.packages("maptools")
library(maptools)

#####load your locations csv
sub_locations <- read.csv("sub_locations.csv", header = TRUE, sep=",")
head(sub_locations)


####create map



mapWorld <- borders("world", colour="#e3e3e3", fill="#e3e3e3", bg = "white", lwd = 0.05 ) # create a layer of borders
mp <- ggplot() +   mapWorld


### with ggplot
mp <- mp+ geom_point(aes(x = lng, y = lat ), data = sub_locations, color="#0032a0", size=0.01, alpha = .1) 
mp    




####with ggmap 
ggmap(mapWorld, extent = "normal") +
  geom_point(aes(x = lng, y = lat ), data = sub_locations, alpha = .5)















