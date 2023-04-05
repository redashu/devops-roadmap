#!/bin/bash

echo "Lets enjoy inline input  "

if  [ $1 -eq  20  ] 
then
	date 

elif  [  $2 -eq  30   ]
then
	cal 

elif  [  "$3" ==  "hello"  ]
then
	echo "Hurrrrrahhh !!"


else 
	echo "you have not given expected input "

fi
