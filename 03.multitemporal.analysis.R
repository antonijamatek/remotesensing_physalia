#Copernicus remote sensing data

#listing the available data

im.list()

#import data

g2000 <- im.import("greenland.2000.tif")
g2005 <- im.import("greenland.2005.tif")
g2010 <- im.import("greenland.2010.tif")
g2015 <- im.import("greenland.2015.tif")

#color palette

clgren <- colorRampPalette(c("light blue", "blue", "dark blue")) (100)

#plot the data altogether
par(mfrow=c(2,2))
plot(g2000, col=clgren)
plot(g2005, col=clgren)
plot(g2010, col=clgren)
plot(g2015, col=clgren)

#better way to do a multiplot

gmulti <- c(g2000, g2005, g2010, g2015) # complying the bands
gmulti
plot(gmulti, col=clgren)

