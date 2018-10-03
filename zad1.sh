#!/bin/bash

> output.txt
x=$2
y=$3
if ((y > x)); then
for i in $(seq $2 $3); do
	line=$(grep -w $i $1)
	#echo $i
	if [ "$line" == '' ]; then		
		echo "$i. " >> output.txt
	else
		echo "$line" >> output.txt
	fi
done
else
for (( i =x; i>= y; --i)); do
	line=$(grep -w $i $1)
	#echo $i
	if [ "$line" == '' ]; then		
		echo "$i. " >> output.txt
	else
		echo "$line" >> output.txt
	fi
done
fi
mv output.txt plik.txt




