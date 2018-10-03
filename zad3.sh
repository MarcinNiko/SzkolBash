#!/bin/bash
> help.txt
while read line; do
	for word in $line; do
		count=$(grep $word in_zad3.txt | wc -l)
		found_word=$(grep $word help.txt)
		if [ "$found_word" == '' ]; then
			echo "$word $count&" >> help.txt
		fi	
	done
done < $1
tr '&' '\n' < help.txt | cat help.txt | sed 's/\&//'
rm help.txt
