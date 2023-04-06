#!/bin/bash


echo "enter any command "
read c;
while [ "$c" == "date" ] # if you don't wanna give any condition then use true 
do
	date
	sleep 1
done
