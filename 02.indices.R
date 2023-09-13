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
