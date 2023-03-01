#!/bin/bash

while getopts "f:c:" opt; do
	case "$opt" in
		c) result=$(echo "scale=2; ($OPTARG * (9/5)) + 32" | bc -l);;
		f) result=$(echo "scale=2; ($OPTARG - 32)*(5/9)" | bc -l);;
		\?);; 
	esac
done 

echo "$result"
