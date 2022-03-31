#!/bin/bash

if [[ $# != 1 ]]
then
	echo "Insert number of student please"
	exit
else
	case $1 in 
		0) echo "No students" ;;
		1) echo "$1 student" ;;
		2) echo "$1 students" ;;
		3) echo "$1 students" ;;
		4) echo "$1 students" ;;
		$1) echo "A lot of students" ;;
	esac
fi
