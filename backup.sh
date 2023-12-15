#!/bin/bash

echo "Please enter the source directory to create back: "               #print message
read SD                                                                 #Read input from user                                      
echo "Please enter the destination directory to save .tar.gz file: "    #print message
read DD                                                                 #Read input from user
#echo "Please enter a file name to save .tar.gz file: "                  #print message
#read fname                                                              #Read input from user
TIME=$(date +%F_%H_%M_%S)                                               #Time stamp


folder=$(echo "$SD"| awk -F / '{print $NF}')                            # to get folder name from absolute path
gzfile="$folder-$TIME.tar.gz"                                            
cd $SD
cd ..
tar -r -f "$folder-$TIME.tar.gz" $folder                                 # create .tat.gz file
mv $gzfile $DD