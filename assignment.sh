#!/bin/sh

# 1. listing all the files in directory

echo "printing all files in directory"
ls -a
echo "________________________________________________________________________________________________"
echo 

# 2. read and check if directory exists or create it

echo "checking if backflipt directory exists."
#checking for directory named -backflipt
directory_path=$(pwd)
if [ -d ${directory_path}/backflipt ]
then
	echo 'directory named backflipt exists'
else
	echo "directory named backflipt doesn't exists, creating the mentioned directory."
	mkdir -p backflipt
fi
echo "_____________________________________________________________________________________________________"
echo 

# 3. read N value from user and print numbers between 0 to N.

./print.sh
echo "____________________________________________________________________________________________________"
echo

#4. read directory name from user delete if it exists or print message if not exists

./dir_delete.sh
echo "___________________________________________________________________________________________________"
echo

#5. copying one directory to another directory

./copy_dir.sh
echo "__________________________________________________________________________________________________"
echo

#6. count only files in a directory

./count_files.sh
echo "__________________________________________________________________________________________________"
echo

#7. lets say you have a directory A, create a new directory named backflipt if A has less than 5 sub-directories, create a directory named Xenovus if it has 5 directories, else exit with message directory creation not needed

./dir_check.sh
echo "__________________________________________________________________________________________________"
echo

#8. write a shell script with switch case which will print the contents of the given base directories.

./switch.sh
echo "___________________________________________________________________________________________________"
echo

#9. write a program which accepts the name, contact, email, gender if any of the following value is missing the script must exit else write the contents to a file

./program.sh


