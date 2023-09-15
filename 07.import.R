library(terra)
library(imageRy)

phytopico <- rast("C:/Users/Antonija/OneDrive - Prirodoslovno-matematički fakultet/ISLAND/Analiza- Experiment II (2022)/R facetgrid phyto/phytopico22.jpg")
im.plotRGB.user(phytopico, 3, 2, 1)
