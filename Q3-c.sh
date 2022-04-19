#!/bin/bash
filesize=$(wc -w quotes.txt | awk '{print $1}')
echo $filesize
