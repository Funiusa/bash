#!/bin/bash

exchange() { tmp=$first; first=$second; second=$tmp; }

gcd() 
{
	[[ $second -gt $first ]] & exchange
	while [ $second -gt 0 ]
	do
		while [ $first -ge $second ]; do let first=$first-$second; done
		exchange 
	done
}


while true
do
	read first second
	[[ first -eq 0 || second -eq 0 ]] && break
	gcd $first $second
	echo "GCD is $first"

done
echo "bye"

