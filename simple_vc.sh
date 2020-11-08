#!/bin/bash

init_dir=/home/wasadmin/Desktop/newversion
file_list=$init_dir/file_list
target=/home/wasadmin/Desktop/versiontest

while read line;do
	#for backup
	cd $target
	mv $line $line\_bak
	echo "backup $line > $line\_bak"
	cd $init_dir 
	cp $line $target/$line
	echo "update $target/$line"
done <$file_list

echo `find $target -type f -mmin -10 `
