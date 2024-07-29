#!/bin/sh

echo "enter name"
name="$NAME"

echo "enter contact"
contact=$CONTACT

echo "enter email"
email=$EMAIL

echo "enter gender"
gender=$GENDER

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
echo $name $contact $email $gender

if [ -z "${name}" ] || [ -z ${contact} ] || [ -z ${email} ] || [ -z ${gender} ]
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
cat output.txt
