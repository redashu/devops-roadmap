#!/bin/bash
# loop means repeat things or task 
<<X
for i in 1 2 3 4 5 
do
	echo "i is running $i times "
	date
	sleep 1
done
----------

for i in hi hello 7 fine  
do
	echo "i is running $i times "
	date
	sleep 1
done
X
#            cut  -d:  -f1  /etc/passwd
for  i in  `cut  -d:  -f1  /etc/passwd` 
do
	echo "user is $i"
	if [ "$i" == "games" ]
	then
		exit
	else 
		date
	fi 
done 
#  using seq 
<<EOF
for i in `seq 10`
do
	whoami 
done
EOF
