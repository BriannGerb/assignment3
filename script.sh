#!/bin/bash

if [ -z "$1" ]; then
	echo -e "Invalid input"
	exit
elif [ -z "$2" ]; then
	echo -e "Invalid input"
	exit
fi

if [[ $1 -lt 0 ]]; then
	echo -e "Input must be greater than 0"
	exit
elif [[ $2 -lt 0 ]]; then
	echo -e "Input must be greater than 0"
	exit
fi

TOTAL_ROWS=$1
TOTAL_COLUMNS=$2

ROW=1
COLUMN=1

while [ $ROW -le $TOTAL_ROWS ]
do
	while [ $COLUMN -le $TOTAL_COLUMNS ]
	do
		RESULT=$((ROW * COLUMN))
		echo -ne "${ROW}*${COLUMN}=${RESULT}\t"
		let "COLUMN++"
	done
	COLUMN=1
	let "ROW++"
	echo -e ""
done	
