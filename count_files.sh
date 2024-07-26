#!/bin/sh


#taking input from user
dir="$1"

#initiating counting
count=0
for i in $(dir)
do
	if [ -f ${i} ]
	then
		count=$((count+1))
	fi
done


echo $count
