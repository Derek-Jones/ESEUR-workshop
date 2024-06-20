#
# data-patterns.R, 19 Jun 24
#
# Examples of common patterns seen in data


source("ESEUR_config.r")


par(bty="l")
par(las=1)
par(pch=".")

par(mfcol=c(2, 4))
par(mar=MAR_default-c(0.6, 2.5, 0.8, 1))

x=runif(1000, 0, 1)

y=x+rnorm(1000, 0, 0.01)
plot(x, y, col=point_col,
	xaxt="n", yaxt="n",
	xlab="", ylab="")

y=1+x^2+rnorm(1000, 0, 0.01)
plot(x, y, col=point_col,
	xaxt="n", yaxt="n",
	xlab="", ylab="")

y=1-x+rnorm(1000, 0, 0.03)
plot(x, y, col=point_col,
	xaxt="n", yaxt="n",
	xlab="", ylab="")

x=rnorm(1000, 0, 0.5)
y=x^2+rnorm(1000, 0, 0.08)
plot(x, y, col=point_col,
	xaxt="n", yaxt="n",
	xlab="", ylab="")

x=runif(1000, 0, 1)
y=1/(1+exp(-10*(x-0.5)))+rnorm(1000, 0, 0.01)
plot(x, y, col=point_col,
	xaxt="n", yaxt="n",
	xlab="", ylab="")

y=1/(1+exp(10*(x-0.5)))+rnorm(1000, 0, 0.03)
plot(x, y, col=point_col,
	xaxt="n", yaxt="n",
	xlab="", ylab="")

y=x*0.2+0.05*sin(x*20)+rnorm(1000, 0, 0.01)
plot(x, y, col=point_col,
	xaxt="n", yaxt="n",
	xlab="", ylab="")

x=rnorm(1000, 0, 0.5)
y=rnorm(1000, 0, 0.5)
xb=subset(x, sqrt(x^2+y^2) <= 1)
yb=subset(y, sqrt(x^2+y^2) <= 1)
plot(xb, yb, col=point_col,
	xaxt="n", yaxt="n",
	xlab="", ylab="")

# y=rnorm(1000, 0, 0.3)
# xb=subset(x, sqrt(x^2+y^2) <= 1)
# yb=subset(y, sqrt(x^2+y^2) <= 1)
# plot(c(x-1.4, x+1.4, x-1.4, x+1.4), c(y+1, y+1, y-1, y-1), col="blue",
# 	xaxt="n", yaxt="n",
# 	xlim=c(-3, 3), ylim=c(-2, 2),
# 	xlab="", ylab="")
# 
