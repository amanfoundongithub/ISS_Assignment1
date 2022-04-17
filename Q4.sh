#!/bin/bash 
read -a a

for((i=0; i<${#a[*]}; i++))
do
  for((j=$i; j<${#a[*]}; j++))
  do
    if [ ${a[$i]} -ge ${a[$j]} ]
    then
        temp=${a[$i]}
        a[$i]=${a[$j]}
        a[$j]=$temp 
    fi
  done
done
#echo "Sorted array:" 
for((i=0;i<${#a[*]};i++))
do
  echo -n "${a[i]} "
done 
