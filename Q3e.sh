#!/bin/bash
touch temp.txt
grep -wo '[[:alnum:]]\+' $1  | sort | uniq -d > temp.txt

cat temp.txt | while read line 
do
   echo -n "$line:"
   grep -o "$line" $1 | wc -l   
   # do something with $line here
done
