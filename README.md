
Slides for workshops based on the book Empirical Software Engineering using R

[Asciidoc](http://asciidoc.org) is used to create a slidy presentation.

To build the html files:

* Download code+ data in: ESEUR-code-data

* You will need the program source-highlight (used by asciidoc)

* Configure the hardcoded paths ESEUR and ESEUR_WORK in the Rnw files to the ESEUR-code-data directory.

* change directory to part-1 or part-2

* Start R and type:

 source("ascii-slides.R")
 quit()

* At the Linux command line:

 ./mkallslides.sh

