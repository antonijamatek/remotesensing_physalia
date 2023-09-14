# how to make multivariate analyis on remote sensing data in R

library(terra)
library(imageRy)

im.list()

b2 #blue
b3 #green
b4 #red
b8 #nearinfrared

b2 <- im.import("sentinel.dolomites.b2.tif") 
b3 <- im.import("sentinel.dolomites.b3.tif")
b4 <- im.import("sentinel.dolomites.b4.tif")
b8 <- im.import("sentinel.dolomites.b8.tif") 

sentdo <- c(b2, b3, b4, b8)

im.plotRGB.user(sentdo, 4, 3, 2)

pairs(sentdo, 4, 3, 2) #testing correlation to avoid multicolinearity among the bands when using PCA

#PCA

#1. create a sample
sample <- spatSample(sentdo, 100)
sample

#2. preform PCA
pca <- prcomp(sample)
summary(pca)

#3. build the PCA map
pcamp <- predict(sentdo, pca, index=c(1:4))
pcamp

viridis <- colorRampPalette(viridis(7))(255)
plot(pcamp, col=viridis)
