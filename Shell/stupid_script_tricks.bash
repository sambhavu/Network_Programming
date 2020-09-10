#!/bin/bash

Dangerous_variable = 'cat /boot/vmlinuz' 
Echo "string-length of\$dangerous_variable = ${#dangerous_variable}" 
Exit 0 

#!/bin/bash

Variable1 = 'for I in  12345
Do 
	echo -n "$I"
Done 

Echo "variable1 = $variable1" 

I = 0
Variable2 = 'while [ "$I" -lt 10 ] 
Do 
	echo -n "$I" 
	let "I += 1" 
Done

Echo "variable2 = $variable2" 

Exit 0 
