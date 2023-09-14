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


#plot a single layer from the stack
dev.off()
plot(gmulti[[1]], col=clgren)

#maximum change in time (lag) - value of LST (land surface temperature) in 2015 - value of LST in 2010
gdif = gmulti[[4]]-gmulti[[1]]

#color pallete
cldif=colorRampPalette(c("blue", "light blue", "pink", "red"))(100)

#plot
plot(gdif, col=cldif)


#map algebra


#plot all years
gdif_all = gmulti[[4]]-gmulti[[3]]-gmulti[[2]]-gmulti[[1]]
plot(gdif_all, col=cldif)


#RGB
im.plotRGB.user(gmulti, 1, 3, 4)
#red component - 2000
#green component - 2010
#blue component - 2015

#all the parts in green will have the highest value in 2010 - 
#the same for red and 2000, and blue and 2015)

cldif=colorRampPalette(c("red", "pink", "light blue", "blue"))(100)

