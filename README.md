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
### Question - 4
Create a bash script that supports the following requirement.
  - Create a folder ‘Assignment’.
  - Create a file ‘File1.txt’ inside ‘Assignment’ Folder.
  - Copy all the content of Table.sh(2nd script) in ‘File1.txt’ without using ‘cp’ and ‘mv’ command.
  - Append the text Welcome to Sigmoid’ to the ‘File1.txt’ file.
  - List all the directories and files present inside Desktop Folder.

| Command  | Function |
| ------------- | ------------- |
| mkdir -p $path/assignment | Creating folder using mkdir |
| touch $path/assignment/File1.txt | Creating file using touch |
| cat $path/command_line_assignment/Table.sh > $path/assignment/File1.txt | Copying data in q2 to file1 using cat |
| echo "Welcome to Sigmoid" >> $path/assignment/File1.txt| Appending given text to file1 |
| ls $path | Printing files and folders in Desktop |

###Bash Script
```
#!/usr/bin/env bash
path="/Users/devarithish/Desktop/"

if [ ! -d $path/assignment ]; then
  mkdir -p $path/assignment;
  echo "Directory created"
  touch $path/assignment/File1.txt
  echo "File created"
  cat $path/command_line_assignment/Table.sh > $path/assignment/File1.txt
  echo "Text written from Table.sh to File1.txt"
  echo "Welcome to Sigmoid" >> $path/assignment/File1.txt
  echo "Text appended to File1.txt"
  echo "ALL FILES IN DESKTOP:"
  ls $path
else
	echo "Directory exists already"
fi

```
### Question - 5
You have given an array. Using Bash script, print its length, maximum element and minimum element.arr=( 2 3 4 1 6 7).
###Bash Script
```
#!/usr/bin/env bash
# method 1
<<COMMENTS
echo "Enter the size of the array:"
read n #First we read the number of elements in the array from the user
if [ $n == 0 ];then
	echo "Empty Array"
fi
myarray=()
echo "Enter the array:"
for (( i=1 ; i<=$n ; i++ )); #Then input the array elements
do
	
    read myarray[$i]
done
mi=${myarray[1]}#initialized the minimum and maximum variables to be printed
mx=${myarray[1]}

for i in ${!myarray[@]}; do #we iterate through the array to see if there are elements that are smaller or larger than the already initialzed min max var
	
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
echo "${myarray[*]}" | sort -nr | head -n1 #We can use piplining to feed one output of one command line to another command
echo "Min:"
echo "${myarray[*]}" | sort -n | head -n1 #so we sort the array and then return the first element and in case of finding max element we reverse the array
```

