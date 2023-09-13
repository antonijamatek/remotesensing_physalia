#Indices derived from RS imagery 

library(imageRy)
library(terra)

# list files
im.list()

# import
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

# layer 1 = NIR
# layer 2 = red
# layer 3 = green

par(mfrow=c(1,2))
im.plotRGB.user(m1992, r=1, g=2, b=3)
im.plotRGB.user(m2006, r=1, g=2, b=3)

im.plotRGB.user(m1992, r=2, g=3, b=1)


im.refresh() #re-installs the package from github

#exercise: plot the 2006 image with NIR in the Green component of the RGB space 

im.plotRGB.user(m2006, r=2, g=1, b=3)


#exercise: plot the 2006 image with NIR in the Green component of the RGB space 

im.plotRGB.user(m2006, r=2, g=3, b=1)

#calculating DVI # DVI Difference Vegetation Index - (NIR-R)
dvi1992 = m1992 [[1]]- m1992 [[2]]

#plotting dvi 1992
clDVI <- colorRampPalette(c('darkblue','yellow','red','black'))(100) # specifying a color scheme
plot(dvi1992, col=clDVI)

#calculating DVI 2006
dvi2006 = m2006[[1]]- m2006[[2]]

#plotting DVI 2006
clDVI <- colorRampPalette(c('darkblue','yellow','red','black'))(100) # specifying a color scheme
plot(dvi2006, col=clDVI)

par(mfrow=c(1,2))
clDVI <- colorRampPalette(c('darkblue','yellow','red','black'))(100) # specifying a color scheme
plot(dvi1992, col=clDVI)
clDVI <- colorRampPalette(c('darkblue','yellow','red','black'))(100) # specifying a color scheme
plot(dvi2006, col=clDVI)

#dvi by imageRy

imdvi1992 <- im.dvi(m1992,1,2)
imdvi2006 <- im.dvi(m2006,1,2)

#normalized DVI - when we have images of different bits- normalizing to common scale 

#ndvi
ndvi1992 = (m1992[[1]] - m1992[[2]]) / (m1992[[1]] + m1992[[2]])
ndvi2006 = (m2006[[1]] - m2006[[2]]) / (m2006[[1]] + m2006[[2]])

dev.off() - #clearing plotting area

par(mfrow=c(1,2))
plot(ndvi1992, col=clDVI)
plot(ndvi2006, col=clDVI)

