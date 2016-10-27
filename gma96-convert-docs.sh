#!/bin/bash

# Declare input argument as a variable
echo "Input a file name:"
read FILENAME


# Convert markdown to HTML
pandoc -o $FILENAME.html --smart $FILENAME.md 

# Convert markdown to DOCX
pandoc -o $FILENAME.docx --smart $FILENAME.md 

# Convert markdown to ODT
pandoc -o $FILENAME.odt --smart $FILENAME.md 

# Convert markdown to PDF
pandoc -o $FILENAME.pdf --smart $FILENAME.md 

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted $FILENAME to HTML, DOCX, ODT, PDF"
