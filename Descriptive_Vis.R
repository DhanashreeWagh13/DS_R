##IMPORTING AIRQUALITY DATASET
airquality <- datasets::airquality
airquality

## TO VIEW TOP 20 / BOTTOM 20 ROWS
head(airquality,10)
tail(airquality,10)


##SUMMARY OF THE DATA
summary(airquality)
summary(airquality$Wind) 

##PLOTS

#SCATTER PLOTS
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'Ozone Concentration',ylab = 'No of Instances', main = 'Ozone levels in NY city',col = 'blue')

#BAR PLOT
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',ylab = 'ozone levels', col= 'blue',horiz = F,axes="T")

#HISTOGRAM
hist(airquality$Temp)
hist(airquality$Temp,main = 'Solar Radiation values in air',xlab = 'Solar rad.', col='blue')

#SINGLE BOX PLOT
boxplot(airquality$Wind,main="Boxplot")

#MULTIPLE BOX PLOTS
boxplot(airquality[,1:4],main='Multiple')

##PLOTING MULTIPLE PLOTS in a single window

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty)("o"=yes , "n"=no)
#labels(las: 1 for horizontal, las: 0 for vertical)
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "p")
plot(airquality$Ozone, type= "b")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',xlab = 'ozone levels', col='green',horiz = "FALSE")
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

#SUMMARY FOR WIND
summary(airquality$Wind)

#VARIANCE
var(airquality$Wind,na.rm = "T" )

#STANDARD DEVIATION
sd(airquality$Wind,na.rm = "T" )

#SKEWNESS(You have to first install and then invoke the package "moments")
moments::skewness(airquality$Wind)

#KURTOSIS
moments::kurtosis(airquality$Wind)



