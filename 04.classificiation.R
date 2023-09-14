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

#1. training sets
val1992  <- values (m1992)
val1992

#from these values the algorithm will get the centroids to run the analysis

#2. k-means

k1992 <- kmeans(val1992, centers=2)
k1992  #for each pixel classifier gived a certain class

k1992$cluster
k1992$centers

#3. the cluster values at the top of the original image (building final map)
m1992c <- setValues(m1992[[1]], k1992$cluster) #assign new values to a raster image
plot(m1992c)
