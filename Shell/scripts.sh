if cmp a b &> /dev/null #suppress output 
then echo "Files a and b are identical" 
else echo "Files a and b are different" 

#The very useful "if-grep" construct: 

if grep -q Bash file 
then echo "File contains at least one occurence of Bash." 
fi 

word = Linux 
letter_sequence = inu 
if echo "$word" | grep -q "$letter_sequence" 

#The "-q" option to grep suppresses output. 

then 
  echo "$letter_sequence found in $word" 
else 
  echo "$letter_sequence not found in $word" 
fi 


if COMMAND_WHOSE_EXIT_STATUS_IS_0_UNLESS_ERROR_OCCURED
then echo "Command succeeded." 
else echo "Command failed." 
fi 

if echo "Next *if* is part of the comparison for the first *if." 

  if [[ $comparison = "integer" ]] 
    then (( a < b ))
  else 
    [[ $a < $b ]] 
  fi 
  
then 
  echo '$a is less than $b' 
fi 

