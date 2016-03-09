#
# binomial-summ.R,  9 Mar 16
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

print(summary(b_sl))

