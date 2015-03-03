#!/bin/bash

LITERATURE_DIR=literature

append_bib () {
	echo $1
	cat $1 >> references.bib
	echo >> references.bib
}

echo > references.bib

export -f append_bib
find -L $LITERATURE_DIR -name "*.bib*" -exec bash -c 'append_bib "{}"' \;
