#!/bin/sh

echo "enter name"
read name

echo "enter contact"
read contact

echo "enter email"
read email

echo "enter gender"
read gender

#case ${gender} in
#	male)
#		continue
#		;;
#	female)
#		continue
#		;;
#	prefer not to say)
#		continue
#		;;
#	*)
#		echo "GENDER should be either male or female or prefer not to say"
#		echo "enter gender"
#		read gender
#		;;
#esac

if [ -z ${name} ] || [ -z ${contact} ] || [ -z ${email} ] || [ -z ${gender} ]
then
	exit 0
else
	output="output.txt"
	{
		echo "Name:${name}"
		echo "Contact:${contact}"
		echo "email:${email}"
		echo "Gender:${gender}"
	} > "${output}"
fi
