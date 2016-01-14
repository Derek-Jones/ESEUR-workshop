
Slides for workshop based on the book Empirical Software Engineering using R

http://asciidoc.org[Asciidoc] is used to create a slidy presentation.

To build the html files:

Start R and type (assuming ESEUR-code-data has been downloaded;
there is also a hardcoded path in the R code):

source("ascii-slides.R")
quit()

At the Linux command line:

./mkslides intro-1.txt
./mkslides prob-stats-1.txt
./mkslides regression-1.txt

