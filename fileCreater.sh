#!/bin/bash

echo "Insert how many files you may create"


read fNum

if [[ $fNum -le 0 ]]
then
	echo "Ok. You no need a files"
	exit
else
	echo "Insert files name:"
	read fName
	for (( i=1; i <=$fNum; i++ ))
	do
		touch $fName${i}
	done
	echo "All files was create"
fi




	
