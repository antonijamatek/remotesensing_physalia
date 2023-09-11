# This is a script to visualize satellite data 

#install packages
install.packages("terra")
install.packages("devtools")
install.packages("fields")
install.packages("viridis")
install.packages("ggplot2")

#install imageRy package from GitHub, package to do satellite image analysis
devtools::install_github("ducciorocchini/imageRy", force = "TRUE")

#call to R that we are using installed packages ( packages in all programming languages are called library) 
library(terra)
library(devtools)
library(fields)
library(viridis)
library(ggplot2)
library(imageRy)


# This is an operation
10 + 10

# This is an objext
c <- 10 + 10 
c

# Objects
a <- 5 +3
c+a

# Arrays - series of numbers
diameter <- c(100, 10, 50, 20, 15) #data of tree radius in different sampling units of a sampling field
iron_conc. <- c(10, 1000, 20, 700, 900) #amount of iron in the soil 

#Plot two arrays - a function, and inside function are arguments 

plot(iron, diameter)

#pch - symbol 
#cex - size of points 


#DAY 1 PRACTICAL

im.list() - list of imageRy data

#original file inside the package that we will use
sentinel.dolomites.b2.tif   

#importing data
b2 <- im.import("sentinel.dolomites.b2.tif") #the reflectance of the blue band

b3 <- im.import("sentinel.dolomites.b3.tif") #green band
b3 

b4 <- im.import("sentinel.dolomites.b4.tif") #red band
b4

b8 <- im.import("sentinel.dolomites.b8.tif") #near infrared band
b8


#stack all images as a layer of a single image
sentdolomites <- c(b2, b3, b4, b8)
sentdolomites
