#!/bin/bash

#Script to put JSON object files into JSON array files.
#Loop through all available JSON files in a directory.

FILES="*.json"

for f in $FILES
do

    #echo $f
    #Convert JSON objects to array of JSON objects and write to corrected JSON files.
    #Avoids overwriting original files.
    sed -e 's/}{/},{/g' -e '1s/^/[/' -e '$s/$/]/' $f > "${f::-5}_corrected.json"
done
