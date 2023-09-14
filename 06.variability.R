# measuring variability from RS imagery

library(terra)
library(imageRy)
library(viridis)

im.list()
sent <- im.import("sentinel.png") #similaun glacier
sent

im.plotRGB.user(sent, 1, 2, 3)

# band1 = NIR
# band2 = red
# band3 = green

#calculation of variability over NIR
nir <- sent[[1]]
nir

sd3 <- focal(nir, matrix(1/9, 3, 3), fun=sd)
sd3

plot(sd3, col=viridis)

stacknv <- c(nir,sd3)
plot(stacknv, col=viridis)

#change the moving window in the focal 
sd5 <- focal(nir, matrix(1/25, 5, 5), fun=sd)
sd5

stacknv5 <- c(nir,sd5)
plot(stacknv5, col=viridis)
