#!/bin/bash 

TEMP_FILE = /tmp/printfile.txt

clean_up() { 
    #perform program exit housekeeping
    rm $TEMP_FILE
    exit
}

trap clean_up SIGHUP SIGINT SIGTERM 

pr $1 > $TEMP_FILE 

echo -n "Print File? [y/n]: " 
read 
if ["$REPLY" = "y" ]; then 
      lpr $TEMP_FILE
fi 
clean_up 

