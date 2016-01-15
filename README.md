
Slides for workshop based on the book Empirical Software Engineering using R

[Asciidoc](http://asciidoc.org) is used to create a [slidy](https://www.w3.org/Talks/Tools/Slidy2/#%281%29) presentation.

To build the html files:

* Download code+ data in: [ESEUR-code-data](https://github.com/Derek-Jones/ESEUR-code-data)

* You will need the program [source-highlight](https://www.gnu.org/software/src-highlite/) (used by asciidoc).  The default r.lang configuration file is very minimal and there is a better one in source-highlight/src.

* Configure the hardcoded path in the Rnw files to the ESEUR-code-data
directory.
The following script is one possibility:
 perl -p -i -e 's/usr1\/rbook/Users\/MYUSERNAME\/ESEUR-code-data/g' `grep -ril "usr1/rbook" *`

* Start R and type:

 source("ascii-slides.R")
 quit()

* At the Linux command line:

 ./mkslides intro-1.txt
 ./mkslides prob-stats-1.txt
 ./mkslides regression-1.txt

