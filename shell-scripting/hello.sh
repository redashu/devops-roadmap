#!/bin/bash

echo "Welcome to Bash scripting "
sleep 2 
# echo "Welcome to Centos 8 "
sleep 1
<<EOF
echo "checking Os version please wait.."
sleep 1
 cat /etc/os-release   |   grep  -Eiw 'name|version'

EOF

# user input 
echo "please enter any command to run ..."
# taking input and storing into a variable 
read x

echo "You have entered  $x"
echo "Now we are running user input ..plz wait..."
sleep 1
$x
