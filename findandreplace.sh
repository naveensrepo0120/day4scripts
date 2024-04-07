#!/bin/bash

###############
#Author: B Naveenbalaji
#
#This script will find and replace
#
#Date: 07/04/2024
###############

set -e

file="samplefile.txt"

welcomeline=$(grep -n "Welcome" "$file" | cut -d':' -f1)
while read -r line; do
if [ "$line" -ge "5" ];
then
sed -i "${line}s/give/learning/g" "$file"
fi
done <<< "$welcomeline"
