#!/bin/bash

color_red='\033[0;31m'

reset_color='\033[0m'

path=$HOME

file_name="Fi.op"

echo "Hello world" > $file_name

mv $PWD/$file_name $path

echo  -n $color_red

ls -lah $path | grep $file_name


echo "$reset_color done"
	
rm $path/$file_name
