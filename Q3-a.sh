#!/bin/bash
filesize=$(wc -c quotes.txt | awk '{print $1}')
echo $filesize
