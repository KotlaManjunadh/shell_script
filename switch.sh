#!/bin/sh

#taking user input

dir="$1"

until [ -d ${dir} ]
do
	echo "enter a valid directory path"
	dir=$LIST
	if [ ! -d ${dir} ]
	then
		echo "try again"
	fi
done

case "$dir" in
	*)
		echo "listing all the contents in ${dir}"
		ls -l ${dir}
		;;
esac

