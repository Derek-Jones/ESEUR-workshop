#
# ascii-slides.R, 13 Jan 16

library(ascii)
library(plyr)

# Sweave("file.Rnw", driver=RweaveAsciidoc, encoding = "bytes")

# Sweave(X, driver=RweaveAsciidoc, encoding = "bytes", pdf = TRUE, eps = FALSE, png = FALSE, jpeg = FALSE, format = "pdf")

process_dir=function(X)
{
print(paste0("Directory: ", X))

setwd(cur_dir)
setwd(X)
t=a_ply(list.files(pattern="*.Rnw"), 1,
			function(X) Sweave(X, driver=RweaveAsciidoc, encoding = "bytes",
#				pdf = TRUE, eps = FALSE, png = FALSE, jpeg = FALSE, format = "pdf"))
				pdf = FALSE, eps = FALSE, png = FALSE, jpeg = TRUE, format = "jpg", resolution=150))
return(0)
}


d=list.dirs()
cur_dir=getwd()


t=a_ply(d, 1, process_dir)

setwd(cur_dir)
