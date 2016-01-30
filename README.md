
Slides for workshop based on the book Empirical Software Engineering using R

http://asciidoc.org[Asciidoc] is used to create a slidy presentation.

To build the html files:

* Download code+ data in: ESEUR-code-data

* You will need the program source-highlight (used by asciidoc)

* Configure the hardcoded path in the Rnw files to the ESEUR-code-data
directory.
The following script is one possibility:
 perl -p -i -e 's/usr1\/rbook/Users\/MYUSERNAME\/ESEUR-code-data/g' `grep -ril "usr1/rbook" *`

* change directory to part-1

* Start R and type:

 source("ascii-slides.R")
 quit()

* At the Linux command line:

 ./mkallslides.sh

