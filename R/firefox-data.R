#
# firefox-data.R,  8 Mar 16
#
# Data from:
# Does Hardware Configuration and Processor Load Impact Software Fault Observability?
# Raza Abbas Syed, Brian Robinson and Laurie Williams
#
# Example from:
# Empirical Software Engineering using R
# Derek M. Jones

source("ESEUR_config.r")


ff=read.csv(paste0(ESEUR_dir, "faults/hardware-config/firefox.csv.xz"), as.is=TRUE)

print(ff[, 1:6])
 
