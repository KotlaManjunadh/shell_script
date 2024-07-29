#!/bin/sh

echo "enter a value"
value=$VALUE
a=1
while [ $a -lt $value ]
do 
	echo $a
	a=$((a + 1))
done
