#!/bin/bash
#task12
#Рекурсивно создать вложенную структуру folder1/folder2/folder3, 
#поместить в folder1 новый пустой файл и удалить folder3

recurs () {
	folderName="folder $1"
	mkdir "$folderName"
	cd "$folderName"
	if [ $1 -lt 3 ]; then
		i=$(( $i+1 ))
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
