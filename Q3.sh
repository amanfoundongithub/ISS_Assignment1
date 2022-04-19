#!/bin/bash

#Part a
filesize=$(wc -c $1 | awk '{print $1}')
echo $filesize

#Part b
filesize=$(wc -l $1 | awk '{print $1}')
echo $filesize

#Part c
filesize=$(wc -w $1 | awk '{print $1}')
echo $filesize

# Part d
IFS=$'\n'       # make newlines the only separator
set -f 
touch temp.txt
kp=1         
for i in $(cat < "quotes.txt"); do
  lin=$i
  echo $i > temp.txt
  echo -n "Line No: $kp - Count Of Words: "
  kp=$((kp+1))
  wc -w < temp.txt
done

#rm temp.txt

# Part e
sed -e 's/[^[:alpha:]]/ /g' $1 | tr '\n' " " |  tr -s " " | tr " " '\n'|
tr 'A-Z' 'a-z' |
sort | uniq -cd | awk '{print "Word : "$2" - Count of repetition : "$1-1""}'


