#
# binomial-pred.R,  9 Mar 16
#
# Data from:
#
# Example from:
# Empirical Software Engineering using R
# Derek M. Jones

source("ESEUR_config.r")

pal_col=rainbow(2)

# Simulate some 0/1 data
answer=data.frame(x=c(rnorm(20, mean=1), rnorm(20, mean=3)),
                  y=c(rep(0, 20), rep(1, 20)))

b_sl=glm(y ~ x, data=answer, family=binomial)

x_vals=seq(-1, 5, by=0.1)
t=predict(b_sl, newdata=data.frame(x=x_vals), type="response")

names(t)=x_vals

options(width=51)
print(t[21:40], digits=2)
options(width=80)

