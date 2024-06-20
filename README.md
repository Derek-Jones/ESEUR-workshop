
Slides for two workshops based on the book [Evidence-based Software Engineering: based on the publicly available data](https://github.com/Derek-Jones/ESEUR-book)

[Asciidoc](https://github.com/asciidoc-py/asciidoc-py) is used to create a slidy presentation.

To build the html files:

* You need to install the program source-highlight (used by asciidoc)

* change directory to part-1 or part-2

* you should not need to configure the path ESEUR_dir in the ESEUR-config.r file

* Start R and type (assuming you have the required packages installed):

```
    source("../ascii-slides.R")
    quit()
```

* At the Linux command line:

```
    ./mkallslides.sh
    ./image-crop.sh
```

