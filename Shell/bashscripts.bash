
#!/bin/bash

for plant in "Mercury 36" "Venus 67" "Earth 93" "Mars 142" "Jupiter 483"
do 
	set -- $planet 
	echo "$1	$2,000,000 miles from the sun"

done

Exit 0 

#!/bin/bash
#fileinfo.sh

FILES="/usr/sbin/accept
/usr/sbin/pwck
/usr/sbin/chroot
/usr/sbin/fakefile
/sbin/badblocks
/sbin/ypbind" 

Echo 

For file in $FILES
do 

	if [ ! -e "$file" ]
	then 
		echo "$file does not exist."; echo
		continue 
	fi

	ls -l $file | awk '{ print $9 " 	file size: " $5 }' 
	whites 'base name $file' 

	echo 

done 
exit 0 


#!/bin/bash

NUMBERS="9 7 3 8 37.53" 

for number in 'echo $NUMBERS' 
do 
	echo -n "$number "
Done 

Echo 
Exit 0 

#!/bin/bash
E_BADARGS=65
E_NOFILE=66

if [ ! -f "$2" ] 
Then 	
	echo "File \"$2\" does not exist. " 
	exit $E_NOFILE
Fi 

IFS=$'\012' 

For word in $( strings "$2" | grep "$1" ) #u

Do 
	echo $word
Done 

Exit 0 


#!/bin/bash
#userlist.sh 

PASSWORD_FILE=/etc/passwd
n=1 

For name in $(awk 'BEGIN{FS=":"}{print $1|' < "$PASSWORD_FILE" ) 
Do 
	echo "USER #$n = $name" 
	let "n += 1" 
done 


Exit 0 

#!/bin/bash 
#findstring.sh: 

directory=/usr/bin/
fstring="Free Software Foundation" 

For file in $( find $directory -type f -name '*' | sort ) 
Do 
	strings -f $file | grep "$fstring" | sed -e "s%$directory%%" 
Done
Exit 0 



#!/bin/bash
filename=sample_file

declate -a array1 

array1=( 'cat "$filename"')
echo ${array1[0]} 

element_count=${#array1[*]}
echo $element_count 




