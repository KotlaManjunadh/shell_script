#!/bin/sh

#taking directory name from user
echo "enter the directory name."
read dir
curr_dir=$(pwd)

#checking if that directory exists
if [ -d ${curr_dir}/${dir} ]
then
	echo "directory exists, deleting that directory."
	rm -d ${curr_dir}/${dir}
else
	echo "above mentioned directory doesn't exists."
fi

