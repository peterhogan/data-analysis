setwd("//home//pine//R//")

drive <- read.csv("driving.csv")
names(drive)
attach(drive)

plot

drive$Date <- as.POSIXlt(as.character(drive$Date), format="%d/%m/%Y, tz='GMT')
start.time <- strptime(drive$start.time, format='%H:%M')
drive$End.Time <- strptime(drive$End.Time, format='%H:%M')
drive$


