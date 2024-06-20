#
# byte-benchmark.R, 24 Oct 20


bb=read.csv("byte-dos-app-benchmark.csv", as.is=TRUE)

# Word processing
# WP_mod=glm(SS ~ (CPU+FPU+Disk+Video)^2, data=bb)
WP_mod=glm(WP ~ CPU+Disk, data=bb)
summary(WP_mod)

# Spreadsheet
SS_mod=glm(SS ~ CPU*Disk, data=bb)
summary(SS_mod)

# Database
DB_mod=glm(DB ~ CPU:FPU+Disk, data=bb)
summary(DB_mod)

# Scientific/engineering
SE_mod=glm(Sci.Eng ~ FPU+(CPU+FPU):Disk+CPU:FPU, data=bb)
summary(SE_mod)

# Compiling
CC_mod=glm(Cmplr ~ CPU+CPU:(Disk+Video)+Disk:Video, data=bb)
summary(CC_mod)

plot(bb$CPU, bb$WP, col="red",
	yaxs="i",
	ylim=c(0, 10),
	xlab="CPU", ylab="Application")
points(bb$CPU, bb$SS, col="green")
points(bb$CPU, bb$DB, col="blue")
points(bb$CPU, bb$Sci.Eng, col="orange")

legend(x="topleft", legend=c("Word processing", "Spreadsheet", "Database", "Scientific/Engineering"), bty="n", fill=c("red", "green", "blue", "orange"), cex=1.2)


# > mean(bb$CPU)
# [1] 3.798689
# > mean(bb$Disk)
# [1] 2.297705
# > mean(bb$FPU)
# [1] 10.06492
# > mean(bb$Video)
# [1] 2.391803
# 

# Output
#
# > WP_mod=glm(WP ~ CPU+Disk, data=bb)
# > summary(WP_mod)
# 
# Call:
# glm(formula = WP ~ CPU + Disk, data = bb)
# 
# Deviance Residuals: 
#      Min        1Q    Median        3Q       Max  
# -1.00036  -0.19357   0.01398   0.21441   1.00811  
# 
# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept)  0.66170    0.11051   5.987 1.43e-07 ***
# CPU          0.56580    0.03016  18.762  < 2e-16 ***
# Disk         0.23614    0.03759   6.282 4.65e-08 ***
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# (Dispersion parameter for gaussian family taken to be 0.1350409)
# 
#     Null deviance: 105.7244  on 60  degrees of freedom
# Residual deviance:   7.8324  on 58  degrees of freedom
# AIC: 55.901
# 
# Number of Fisher Scoring iterations: 2
# 
# > 
# > # Spreadsheet
# > SS_mod=glm(SS ~ CPU*Disk, data=bb)
# > summary(SS_mod)
# 
# Call:
# glm(formula = SS ~ CPU * Disk, data = bb)
# 
# Deviance Residuals: 
#      Min        1Q    Median        3Q       Max  
# -0.84897  -0.27586  -0.04357   0.22080   1.33001  
# 
# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept) -0.45710    0.31596  -1.447    0.153    
# CPU          0.81247    0.05921  13.721  < 2e-16 ***
# Disk         1.03431    0.19669   5.259 2.27e-06 ***
# CPU:Disk    -0.16463    0.03322  -4.955 6.81e-06 ***
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# (Dispersion parameter for gaussian family taken to be 0.1510187)
# 
#     Null deviance: 87.6692  on 60  degrees of freedom
# Residual deviance:  8.6081  on 57  degrees of freedom
# AIC: 63.662
# 
# Number of Fisher Scoring iterations: 2
# 
# > 
# > # Database
# > DB_mod=glm(DB ~ CPU:FPU+Disk, data=bb)
# > summary(DB_mod)
# 
# Call:
# glm(formula = DB ~ CPU:FPU + Disk, data = bb)
# 
# Deviance Residuals: 
#      Min        1Q    Median        3Q       Max  
# -2.80379  -0.25886  -0.03463   0.31030   2.12625  
# 
# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept) 0.599700   0.182435   3.287  0.00172 ** 
# Disk        0.527579   0.070578   7.475 4.66e-10 ***
# CPU:FPU     0.010899   0.002134   5.108 3.80e-06 ***
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# (Dispersion parameter for gaussian family taken to be 0.5643713)
# 
#     Null deviance: 107.349  on 60  degrees of freedom
# Residual deviance:  32.734  on 58  degrees of freedom
# AIC: 143.14
# 
# Number of Fisher Scoring iterations: 2
# 
# > 
# > # Scientific/engineering
# > SE_mod=glm(Sci.Eng ~ FPU+(CPU+FPU):Disk+CPU:FPU, data=bb)
# > summary(SE_mod)
# 
# Call:
# glm(formula = Sci.Eng ~ FPU + (CPU + FPU):Disk + CPU:FPU, data = bb)
# 
# Deviance Residuals: 
#      Min        1Q    Median        3Q       Max  
# -1.89273  -0.33157  -0.06169   0.26032   2.23902  
# 
# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept)  0.27478    0.33499   0.820   0.4155    
# FPU          0.58923    0.08078   7.294 1.13e-09 ***
# CPU:Disk     0.44895    0.05200   8.634 7.08e-12 ***
# FPU:Disk    -0.17137    0.02262  -7.576 3.87e-10 ***
# FPU:CPU     -0.02714    0.01044  -2.600   0.0119 *  
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# (Dispersion parameter for gaussian family taken to be 0.6098904)
# 
#     Null deviance: 307.894  on 60  degrees of freedom
# Residual deviance:  34.154  on 56  degrees of freedom
# AIC: 149.73
# 
# Number of Fisher Scoring iterations: 2
# 
# > 
# > # Compiling
# > CC_mod=glm(Cmplr ~ CPU+CPU:(Disk+Video)+Disk:Video, data=bb)
# > summary(CC_mod)
# 
# Call:
# glm(formula = Cmplr ~ CPU + CPU:(Disk + Video) + Disk:Video, 
#     data = bb)
# 
# Deviance Residuals: 
#      Min        1Q    Median        3Q       Max  
# -1.25602  -0.25274  -0.00865   0.18438   2.25420  
# 
# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept) -0.33211    0.26366  -1.260  0.21303    
# CPU          1.08385    0.13670   7.928 1.01e-10 ***
# CPU:Disk    -0.08801    0.03156  -2.789  0.00721 ** 
# CPU:Video   -0.15955    0.03273  -4.874 9.39e-06 ***
# Disk:Video   0.32626    0.06577   4.961 6.90e-06 ***
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# (Dispersion parameter for gaussian family taken to be 0.2543004)
# 
#     Null deviance: 141.879  on 60  degrees of freedom
# Residual deviance:  14.241  on 56  degrees of freedom
# AIC: 96.37
# 
# Number of Fisher Scoring iterations: 2
# 
# 
