#!/bin/bash

echo "Please enter the source directory to create back: "
read SD
echo "Please enter the destination directory to save .tar.gz file: "
read DD
echo "Please enter a file name to save .tar.gz file: "
read fname
TIME=$(date +%F_%H_%M_%S)


folder=$(echo "$SD"| awk -F / '{print $NF}')
cd $SD
cd ..
tar -r -f "$fname-$TIME.tar.gz" $folder
