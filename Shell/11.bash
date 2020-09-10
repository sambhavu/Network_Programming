#!/bin/bash

PIDS=$(pidof ash $0)
P_array=( $PIDS )
Echo $PIDS
Let "instances = ${#P_array[*]} -1" 

Echo "$instances instance(s) of this script running." 

Echo "[Hit ctl-c to exit.]"; echo 

Sleep 1

Sh $0 

Exit 0 

