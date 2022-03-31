#!/bin/bash

color_red='\033[0;31m'

reset_color='\033[0m'

path=$HOME

__variable="__variable"
variable124="va124"
variable_134="v134"
_variable="_v"
VARiable="VAR"

echo "Variable names:"
echo "=========================================================================="
echo $__variable" | "$variable124" | "$variable_134" | "$_variable" | "$VARiable
echo "=========================================================================="

file_name="Fi.op"

echo "Hello world" > $file_name

mv $PWD/$file_name $path

echo  -n $color_red

ls -lah $path | grep $file_name


echo "$reset_color done"
	
rm $path/$file_name
