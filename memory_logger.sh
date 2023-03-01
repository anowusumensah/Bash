#!/bin/bash

if [ -d ~/performance ] ; then
	echo "Folder exist";
else
	mkdir ~/performance
fi

free >> ~/performance/memory.log
