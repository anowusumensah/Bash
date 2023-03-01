#!/bin/bash

read -rp "Enter your number: " num

while [ "$num" -gt 10 ]; do
	echo "$num"
	num=$(("$num" - 1 ))
	sleep 0.5

done       	

