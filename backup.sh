#!/bin/bash

echo "Please enter the source directory"
read SD
echo "Please enter the destination directory"
read DD
TIME=$(date +%F:%H:%M:%S)
cd $SD


file=tar -r -f "$SD-$TIME" $SD

mv $file $DD