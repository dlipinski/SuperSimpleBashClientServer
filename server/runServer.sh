#!/bin/bash

echo "PLDL Server started"
echo "Listening on input"

while true
do
	while [[ `cat input` == "" ]]
	do
	:
	done
	echo "-------------New request"
	echo "Time: "`date +"%T"`
	number=$( cat input )
	echo "Retrived: "$number	
	number=$[ $number*$number ]
	echo $number > ../client/output
	echo "Sended: "$number
	> input

done
exit 0
