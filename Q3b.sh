#!/bin/bash
filesize=$(wc -l quotes.txt | awk '{print $1}')
echo $filesize

