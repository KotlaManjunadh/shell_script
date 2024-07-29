#!/bin/sh

#taking user input provided

dir="$1"
until [ -d ${dir} ]
do
	echo "please provide a valid directory path"
	dir=$LIST
	if [ ! -d ${dir} ]
	then
		echo "Try again"
	fi
done

#counting directories inside provided directory
count=0
for i in $(dir)
do
	if [ -d ${i} ]
	then
		count=$((count+1))
	fi
done

#creating directory as mentioned
if [ $count -lt 5 ]
then
	echo "this directory has less than 5 sub directories, creating new directory named backflipt"
	cd ${dir}
	mkdir backflipt 
elif [ $count -eq 5 ]
then
	echo "this directory has 5 sub directories, creating new directory named Xenovous"
	cd ${dir}
	mkdir Xenovous
else
	echo "Directory creation not needed."
	exit 0
fi


