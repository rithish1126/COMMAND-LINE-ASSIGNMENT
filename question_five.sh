#!/usr/bin/env bash
# method 1
<<COMMENTS
echo "Enter the size of the array:"
read n
if [ $n == 0 ];then
	echo "Empty Array"
fi
myarray=()
echo "Enter the array:"
for (( i=1 ; i<=$n ; i++ )); 
do
	
    read myarray[$i]
done
mi=${myarray[1]}
mx=${myarray[1]}

for i in ${!myarray[@]}; do
	
	if [ $mi -ge $i ];then
		mi=$i
	fi
	if [ $mx -le $i ];then
		mx=$i
	fi
	
done
echo "Max element= ${mx} and Min element=${mi}"
COMMENTS
# method 2
myarray=( 2 3 4 1 6 7 )  
IFS=$'\n'
echo "Max:"
echo "${myarray[*]}" | sort -nr | head -n1 
echo "Min:"
echo "${myarray[*]}" | sort -n | head -n1 

