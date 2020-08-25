#!/bin/bash 
#sysinfo_page - A script to produce a system information HTML file 

#### Constants 

TITLE = "System Information for $HOSTNAME" 
RIGHT_NOW = $(date + "%x %r %Z")
TIME_STAMP = "Updated on $RIGHT_NOW by $USER"

#### Main 

cat <<- _EOF_ 
  <html> 
  <head> 
      <title>$TITLE</title> 
  </head> 
  
  <body> 
      <h1>$TITLE</h1> 
      <p>$TIME_STAMP</p> 
      $(system_info) 
      $(show_uptime) 
      $(drive_space) 
      $(home_space) 
   </body> 
   </html> 
_EOF_ 
