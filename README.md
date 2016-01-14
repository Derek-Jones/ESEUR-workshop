
Slides for workshop based on the book Empirical Software Engineering using R

[Asciidoc](http://asciidoc.org) is used to create a [slidy](https://www.w3.org/Talks/Tools/Slidy2/#%281%29) presentation.

To build the html files:

Start R and type (assuming [ESEUR-code-data](https://github.com/Derek-Jones/ESEUR-code-data) has been downloaded;
there is also a hardcoded path in the R code):

source("ascii-slides.R")

quit()

At the Linux command line:

./mkslides intro-1.txt

./mkslides prob-stats-1.txt

./mkslides regression-1.txt

