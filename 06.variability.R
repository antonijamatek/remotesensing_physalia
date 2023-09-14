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

sd3 <- focal(nir, matrix(1/9, 3, 3), fun=sd) #variability 3 by 3 pixel
sd3

plot(sd3, col=viridis)

stacknv <- c(nir,sd3)
plot(stacknv, col=viridis)

#change the moving window in the focal 

sd5 <- focal(nir, matrix(1/25, 5, 5), fun=sd) #variability 5 by 5 pixel (wider regions), 
#resulting in higher variability
sd5

stacknv5 <- c(nir, sd3, sd5)
plot(stacknv5, col=viridis)

sd7 <- focal(nir, matrix(1/49, 7, 7), fun=sd)
stacknv7 <- c(nir, sd3, sd5, sd7)
plot(stacknv7, col=viridis)
