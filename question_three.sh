#!/usr/bin/env bash
echo "Enter the number: "  
read n
flag=0
for (( i=2 ; i<$sqrt($n) ; i++ )); 
do
    if [ $((n%i)) == 0 ];then
		echo "Not a Prime Number"
		flag=1
		break
	fi
done
if [ $flag == 0 ];then
	echo "Prime number"
fi


