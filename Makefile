
sources := 		$(wildcard *.Rmd)
slides := 		$(sources:.Rmd=.pdf)

all:			${slides}

%.pdf:			%.Rmd
			r -lrmarkdown -e"render(\"$<\")"


