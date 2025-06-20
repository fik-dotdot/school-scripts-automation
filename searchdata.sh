#!/bin/bash
#This will prompt the user name
read -p "Enter file name: " filename
if [ -f "$filename" ]
then
	read -p "Enter keyword: " keyword
	grep -i "$keyword" "$filename" >> /home/christopheranagnostopoulos/pattern.txt
else
	echo "File doesn't exist"

fi