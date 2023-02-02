#!/usr/bin/env bash

if [ $# -eq 0 ]; then
	echo "No number entered"
else
n=$1
i=1
while [ $i -le 10 ]
  do
	ans=`expr $n \* $i`
    echo "$n X $i = $ans"
	i=$(($i+1))
  done
fi
 