# COMMAND-LINE-ASSIGNMENT
### Question - 1
Write a bash script to get the current date, time, username, home directory and current working directory.

| Command  | Function |
| ------------- | ------------- |
|"$now" | Command to fetch the date
|"$(date +"%T") | Command to fetch the time
|"$USER" | Command to fetch the current working user
|"$HOME"| Command to fetch the Home directory
|"$PWD" | Command to fetch the current wokring directory

###Bash Script
```
#!/usr/bin/env bash

echo "Current Time is:$(date +"%T")"
echo "Current date: $now"
echo "USER IS:$USER"
echo "HOME DIRECTORY IS:$HOME"
echo "Current Working Directory Is:$PWD"

```

### Question - 2
Write a bash script (name Table.sh) to print the Table of a number by using a while loop. It should support the following requirements.
  - The script should accept the input from the command line.
  - If you don’t input any data, then display an error message to execute the script correctly.
  
```
#!/usr/bin/env bash

if [ $# -eq 0 ]; then  #If the number of argumnets passed in the command line are 0 then we output "No number entered"
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
 
```
### Question - 3
Write a Function in bash script to check if the number is prime or not? It should support the following requirement.
          - The script should accept the input from the User.
	  
###Bash Script
```
#!/usr/bin/env bash
echo "Enter the number: "  
read n	#Take input from user after bash script is run
flag=0  
for (( i=2 ; i<$sqrt($n) ; i++ ));#The Loop runs from 2 to the square root of the number entered to check if the number is divisble by the looping numbers 
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
```

