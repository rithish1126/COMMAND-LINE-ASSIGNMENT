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
