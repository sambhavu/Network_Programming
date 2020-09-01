#!/bin/bash
#zmore 

NOARGS=65
NOTFOUND=66
NOTGZIP=67

if [ $# -eq 0 ] #same effect as: if [ -z "$1 ] 
# $1 can exist, but be empty: zmore "" arg2 arg3 
then 
  echo "Usage: 'basename $0' filename" >&2
  #Error message to stderr. 
  exit $NOARGS 
  #Returns 65 as exit status of script (error code). 
  
fi 

filename=$1 

if [ ! -f "$filename" ] #Quoting $filename allows for possible spaces. 
then 
  echo "File $filename not found!" >&2
  #Error message to stderr. 
  exit $NOTFOUND 
fi 

if [ ${filename##*.} != "gz" ]
#using bracket in variable substituion. 
then
  echo "File $1 is not a gzipped file!" 
  exit $NOTGZIP 
fi 

zcat $1 | more 

#uses the filter 'more.' 
#may substitute 'less', if desired. 

exit $? 
