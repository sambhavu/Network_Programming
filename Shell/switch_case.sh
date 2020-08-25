#!/bin/bash 

echo -n "Enter a number between 1 and 3 inclusive > " 
read character 
case $character in 
     1) echo "You entered one." 
        ;;
     2) echo "You entered two." 
        ;;
     3) echo "You entered three. " 
        ;;
     *) echo "You did not enter a number between 1 and 3."
     
esac 

number = 0 
while [ "$number" -lt 10]; do
      echo "Number = $number" 
      number = $((number + 1))  
done 
    
    
