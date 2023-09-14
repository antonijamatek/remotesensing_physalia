#Procedure for classifying via remote sensing

library(terra)
library(imageRy)
library(ggplot)

im.list()

m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

im.plotRGB.user(m1992, 1, 2, 3)

#1. training sets
val1992  <- values (m1992)
val1992

#from these values the algorithm will get the centroids to run the analysis
