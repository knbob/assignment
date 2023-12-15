#!/bin/bash

echo "Please enter the source directory: "
read SD
echo "Please enter the destination directory: "
read DD
echo "Please enter a file name: "
read fname
TIME=$(date +%F_%H_%M_%S)
echo "$TIME"
cd $SD

folder=$(echo "$SD"| awk -F / '{print $NF}')
echo "$folder"

echo "$SD"
echo "$DD"

cd $SD
cd ..
tar -r -f "$fname-$TIME.tar.gz" $folder
