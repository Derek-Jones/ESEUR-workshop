#
# scaling-exp-pow.R, 16 Jun 24
#
# Data from:
#   Example

source("ESEUR_config.r")

plot_layout(2, 3)

x=sort(runif(100, 1, 20))
y=1e4*dexp(x, rate=0.3)*runif(100, 0.9, 1.1)

plot(x, y, col=point_col,
	xlab="x")

plot(x, y, log="y", col=point_col,
	xlab="x")

x=sort(c(runif(50, 1, 10), runif(5, 11, 100)))*runif(55, 0.8, 1.2)
y=x^1.1*runif(55, 0.8, 1.2)

plot(x, y, col=point_col,
	ylab="y")

plot(x, y, log="xy", col=point_col,
	ylab="y")

x=0:10
y=1e3*dpois(x, lambda=2)+rnorm(11, sd=5)

plot(x, y, col=point_col,
	xlab="x")

x=sort(runif(100, 1, 20))
y=1e2*dnorm(x, mean=10, sd=2)*runif(100, 0.9, 1.1)

plot(x, y, col=point_col,
	xlab="x")


