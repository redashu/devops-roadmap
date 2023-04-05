#!/bin/bash

echo "Hey type anything : "
read user_input 
if  [ "$user_input" == "hello" ] 
then
	date 

elif  [  "$user_input" == "hi"  ]
then
	cal 

elif  [  "$user_input" == "ok"  ]
then
	echo "fine"

else 
	echo "you have not given expected input "

fi
