#!/bin/bash

while true
do
	read arg1 arg2 arg3
	if [[ $arg1 == "exit" ]]; then echo "bye"; break; fi
	if [[ -n $arg1 && -n $arg2 && -n $arg3  ]]; then
		let res=$arg1$arg2$arg3; 
		echo $res
	else 
		echo error; break
	fi
done
