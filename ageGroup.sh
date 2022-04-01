#!/bin/bash
while true
do
    echo -n "Enter your name: "; read name
    [ -z $name ] && break
    
    echo -n "Enter your age: "; read age
    [ $age -eq 0 ] && break
    
    echo -n "$name, your group is "
    if (( $age < 17 )) ; then
        echo child
    elif (( $age > 25 )) ; then
        echo adult
    else
        echo youth
    fi
    
done
echo "bye"
