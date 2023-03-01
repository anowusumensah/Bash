#!/bin/bash


counter=0;
while getopts "m:s:" opt; do
	case "$opt" in
		m) counter=$(echo "(${counter} +  ($OPTARG * 60))" | bc -l) ;;
		s) counter=$(echo "(${counter} + $OPTARG)" | bc -l) ;;
		\?);;	
	esac
done

while [ "${counter}" -ge 0 ]; do
	echo "$counter"
	counter=$(("${counter}"-1))
	sleep 0.5

done

