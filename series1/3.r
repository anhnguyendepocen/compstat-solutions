airline <- scan("http://stat.ethz.ch/Teaching/Datasets/airline.dat")
par(mfrow = c(1,1))
plot(airline,type="l")

## b)
logair <- log(airline)
plot(logair,type="l")

## c)
norows <- 12*12
trend <- 1:norows
jan <- rep(c(1,rep(0,11)),12)
jan <- rep(c(0,1,rep(0,10)),12)
jan <- rep(c(1,rep(0,11)),12)
jan <- rep(c(1,rep(0,11)),12)
jan <- rep(c(1,rep(0,11)),12)
jan <- rep(c(1,rep(0,11)),12)
jan <- rep(c(1,rep(0,11)),12)

## more elegantly
month <- as.factor(rep(month.name,12))
reg <- lm(log(airline)~trend+month -1)

## d)
par(mfrow=c(1,2))
plot(fitted(reg),type="l")
plot(residuals(reg),type="l")

