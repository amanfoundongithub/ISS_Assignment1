#!/bin/bash

#full-reverse part
read x
echo $x | rev 
len=${#x}

#increment-part
for i in ${x[*]}
do
   i=$(echo "$i" | tr "0-9a-z" "1-9a-z_")
   echo -n $i
done

echo 


#half-reverse part
p=$(($len/2))
b=${x:0:p}
c=${x:$p:$len}
echo -n $b | rev
echo -n $c
echo 
