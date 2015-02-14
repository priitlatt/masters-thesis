#!/bin/sh

BRANCH=`git rev-parse --abbrev-ref HEAD`

git checkout gh-pages
git pull origin gh-pages
git checkout $BRANCH -- '*.pdf'
git commit -m "Update thesis pdf"
git push origin gh-pages
git checkout $BRANCH

