#!/bin/bash

recurs () {
	folderName="folder $1"
	mkdir "$folderName"
	cd "$folderName"
	if [ $1 -lt 3 ]; then
		(( i++ ))
		recurs $i
	fi
}

i=1
recurs $i
cd ..
rm -r "folder $i"
cd ..
touch newFile
cd ..
