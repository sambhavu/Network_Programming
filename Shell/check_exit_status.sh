cd $some_directory

if ["$?" = "0" ]; then 
      rm * 
      
else 
      echo "Cannot change directory!" 1>&2
      exit 1
fi 

