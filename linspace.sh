#!/bin/bash
#Script written by Anthony Owusu-Mensah
# Function accepts 2 or 3 parameters and Generate linearly spaced vector
# $1 = start point
# $2 = End point
# $3 = length of the vector
# All parameters should be integers

argumentChecker() {
	local n=$1
	#echo "The number of arguments = $n"
	 if [ $n -ge 2 ] && [ $n -le 3 ]; then
            #number of inputs is either or 3
	    #do nothing, I am yet to find the pass statement in bash
		n=$n; 
	else
		echo "Parameters are more than 2 or 3"
		exit 129;
		
         fi	
}

linspace() {
	local start=$1;
	local end=$2;
	argumentChecker $#; #check whether user supplied corect number of arguments
	if [ $# -eq 2 ]; then
		local n=5;
	else
		local n=$3;
	fi
	dt=$(echo "scale=10;$((${end}-${start}))/ $((${n}-1))" | bc -l);
	for ((i=0;i<n;i++));
	do
		newArray[$i]=$(echo "${start} + $i*$dt" | bc -l);
	done

	echo ${newArray[@]}
}
# function exection
linspace $@


