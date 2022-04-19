#!/bin/bash

IFS=$'\n'       # make newlines the only separator
set -f 
touch temp.txt
kp=1         # disable globbing
for i in $(cat < "$1"); do
  lin=$i
  echo $i > temp.txt
  echo -n "Line No: $kp Count Of Words: "
  kp=$((kp+1))
  wc -w < temp.txt
done
