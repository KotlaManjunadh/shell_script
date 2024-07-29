#!/bin/sh

# creating a function which will print all the files in it
print_files() {
	dir="$1"
	indent="$2"
	# finding all available things in given directory
	for i in "$dir"/*
	do
		if [ -f "$i" ]
		then
			name="${i##*/}"
			echo "$indent$name"
		fi
		if [ -d "$i" ]
		then
			echo "$indent${i##*/}"
			print_files "$i" "$indent|----"
			indent="$2"
		fi
	done
	
}

start=$(pwd)
print_files "$start"
