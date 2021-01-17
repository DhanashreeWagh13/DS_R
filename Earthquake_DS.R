## IMPORTING QUAKES DATASET
quakes<- datasets::quakes
quakes

## TO VIEW TOP 20 / BOTTOM 20 ROWS
head(quakes,20)
tail(quakes,20)

##SUMMARY OF THE DATA
summary(quakes$mag)
summary(quakes$depth)

##PLOTS

#SCATTER PLOT
plot(quakes)
plot(quakes$depth)
plot(quakes$mag)
plot(quakes$depth,quakes$mag,type = "b")
plot(quakes$depth , type= "l")            # p: points, l: lines,b: both
plot(quakes$mag, xlab = 'Index',ylab = 'Magnitude', main ="Magnitude for EARTHQUAKE dataset",col = 'ORANGE')

#BAR PLOT
barplot(quakes$depth,main = "Depth for EARTHQUAKE dataset",ylab = "MAGNITUDE", horiz = "FALSE",col = "YELLOW",axes = "T")

#HISTOGRAM
hist(quakes$depth)
hist(quakes$depth, main ='Depth for EARTHQUAKE dataset', xlab = 'Index ', col='red')

#SINGLE BOX PLOT
boxplot(quakes$mag,main="Boxplot")

#Multiple BOXPLOTS
boxplot(quakes)
boxplot(quakes[,1:4],main='Multiple BOXPLOT')

##PLOTING MULTIPLE PLOTS in a single window

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty)(o:yes, n=no)
#labels(las: 1 for horizontal, las: 0 for vertical)

par(mfrow=c(2,2),mar=c(2,5,2,1),  las=1, bty="n")
plot(quakes$mag)
plot(quakes$mag,quakes$depth, xlab="Magnitude", ylab ="Depth" , main = "MAGNITUDE VS DEPTH",type = "p" )
plot(quakes$lat ,type= "l")
plot(quakes$depth ,type= "p")



#SUMMARY FOR mag
summary(quakes$mag)

#VARIANCE
var(quakes$mag,na.rm = "T" )

#STANDARD DEVIATION
sd(quakes$mag,na.rm = "T" )

#SKEWNESS(You have to first install and then invoke the package "moments")
moments::skewness(quakes$mag)

#KURTOSIS
moments::kurtosis(quakes$mag)





