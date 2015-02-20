#!/bin/bash

REFERENCES=references.bib
LITERATURE_DIR=literature

append_bib () {
	echo $1
	cat $1 >> references.bib
	echo >> references.bib
}

touch $REFERENCES
rm $REFERENCES
touch $REFERENCES

export -f append_bib
find -L $LITERATURE_DIR -name "*.bib*" -exec bash -c 'append_bib "{}"' \;

