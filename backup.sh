#!/bin/bash

echo "Please enter the source directory: "
read SD
echo "Please enter the destination directory: "
read DD
echo "Please enter a file name: "
read fname
TIME=$(date +%F:%H:%M:%S)
cd $SD

echo "$SD"
echo "$DD"

cd $SD
tar -r -f "$fname-$TIME.tar.gz" $SD
