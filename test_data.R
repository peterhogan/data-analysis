library(ggplot2,rmarkdown)
samplesize = 1E3
# xlim=c(-6,6),ylim=c(0,400)

par(mfrow=c(2,2), ask=TRUE)
hist(rnorm(samplesize, mean=0, sd=1), main='mean=0, sd=1',xlim=c(-10,10),ylim=c(0,400))
hist(rnorm(samplesize, mean=3, sd=1), main='mean=3, sd=1', xlim=c(-10,10),ylim=c(0,400))
hist(rnorm(samplesize, mean=2, sd=2), main='mean=2, sd=2', xlim=c(-10,10),ylim=c(0,400))
hist(rnorm(samplesize, mean=0, sd=0.5), main='mean=0, sd=0.5', xlim=c(-10,10),ylim=c(0,400))

plot(rnorm(samplesize, mean=0, sd=1), main='mean=0, sd=1',ylim=c(-4,8))
plot(rnorm(samplesize, mean=3, sd=1), main='mean=3, sd=1', ylim=c(-4,8))
plot(rnorm(samplesize, mean=2, sd=2), main='mean=2, sd=2', ylim=c(-4,8))
plot(rnorm(samplesize, mean=0, sd=0.5), main='mean=0, sd=0.5',ylim=c(-4,8))

