#!/bin/bash

IFS=$'\n'       # make newlines the only separator
set -f 
touch temp.txt         # disable globbing
for i in $(cat < "$1"); do
  lin=$i
  echo $i > temp.txt
  wc -w < temp.txt
done
