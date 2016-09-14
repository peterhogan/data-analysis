drv = read.csv("//home/pine/R/drive.csv")

to = subset(drv, to.from == "To")
from = subset(drv, to.from == "From")

pairs(drv[c(4,7,8,10,12,15,16,17,18)])

boxplot(to$avg.speed, from$avg.speed, names=c("To","From"), ylab="Average Speed (mph)")


pairs(to[c(4,7,8,10,12,15,16,17)])
pairs(from[c(4,7,8,10,12,15,16,17)])

