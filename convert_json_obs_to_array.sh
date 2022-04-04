#!/bin/bash

#To run script type at terminal: $./JSON-objects.array.sh infile.json outfile.json

#Input and output file arguements.
infile="$1"
outfile="$2"

#Add commas between each JSON object, put square brackets at beginning and end of file to make array.
#Write JSON array to a new JSON file.
sed -e 's/}{/},{/g' -e '1s/^/[/' -e '$s/$/]/' "$infile" > "$outfile"
