#!/bin/bash

myarray=(2 4 6 7 10)
len=${#myarray[@]};

for ((i=0;i<"$len";i++));
do
	echo "${myarray[$i]}"
done	


