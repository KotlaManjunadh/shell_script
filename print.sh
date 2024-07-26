#!/bin/sh

echo "enter a value"
read value
a=1
while [ $a -lt $value ]
do 
	echo $a
	a=$((a + 1))
done
