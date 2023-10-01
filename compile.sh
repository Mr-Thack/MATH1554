#!/bin/bash

# Pass the directory as the first parameter
function compile() {
    mkdir "pdf/$1"
    for file in "$1"/*.md; do
        # $file will include the path to it
        # e.g. Linear Systems/Echelon Form.md
        # However, basename $filename .file.extension removes the directory and extension
        pandoc -f markdown -t pdf "$file" -s -o "pdf/$1/$(basename "$file" .md).pdf"
    done
}
    

rm -rf pdf;
mkdir pdf;
compile "Linear Systems" 
