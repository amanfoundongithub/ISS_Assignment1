#!/bin/bash

#First-part
touch temp.txt
sed '/^$/d' temp.txt

#second-part
awk '!visited[$0]++' temp.txt 

