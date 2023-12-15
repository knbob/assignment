#!/bin/bash

echo "Please enter the source directory"
read SD
echo "Please enter the destination directory"
read DD
TIME=$(date +%F:%H:%M:%S)
cd $SD

echo "$SD"
echo "$DD"


file=tar -r -f "$SD-$TIME" $SD
echo "$file"

mv $file $DD