#!/usr/bin/env bash
echo "Enter the number: "  
read n
flag=0
if [ $n -eq 1 ] || [ $n -eq 0 ]; then
    echo "$n is Not Prime number"
    return
fi
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


