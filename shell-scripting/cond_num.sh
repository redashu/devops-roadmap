#!/bin/bash

echo "Hey type any number : "
read user_input 
if  [ $user_input -eq  20  ] 
then
	date 

elif  [  $user_input -gt  20   ]
then
	cal 

elif  [  $user_input -lt 20  ]
then
	echo "this number is less than 20 "


else 
	echo "you have not given expected input "

fi

