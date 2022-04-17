#!/bin/bash
inp="quotes.txt"
while IFS= read -r line
do
  author=`cut -d "~" -f2- <<< "$line"`
  quote=`echo $line | cut -d "~" -f1`
  if [ -z "$line" ]
  then
  continue
  else
  echo "$author once said,\""$quote"\""
  fi
done < "$inp" > speech.txt
