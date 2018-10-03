#!/bin/bash

> output.txt
for i in $(seq 10 $3); do
	line=$(grep $i $1)
	if [ "$line" != '' ]; then
		short="${line:2:1}"
	fi
done
for i in $(seq $2 $3); do
	line=$(grep -w ^$i $1)
	if [ "$line" == '' ]; then
				
		echo "$i$short " >> output.txt
	else
		echo "$line" >> output.txt
	fi
done
mv output.txt plik.txt




