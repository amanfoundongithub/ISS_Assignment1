#!/bin/bash

#First-part
sed '/^$/d' quotes.txt

#second-part
awk '!visited[$0]++' quotes.txt 

