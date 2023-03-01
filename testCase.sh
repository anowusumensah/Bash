#!/bin/bash


select city in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karach
do
	case $city in
		Tokyo) 
			country="Japan" ;;
		
		London|Manchester)
			country="United Kingdom" ;;
		
		"Los Angeles"|"New York")
			country="USA" ;;
	esac
		echo "${city} is in ${country}"
		break
done	

