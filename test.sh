#!/bin/bash

echo 'test 3'

### # # 

t=5

cmd="sysctl -n vm.loadavg" # mac os
# cmd="cat /proc/loadavg" # debian

max=3

i=0

while [[ $i -lt $max ]]; do

	res=`$cmd`
	echo $res
	sleep 5;

	((i++))
done

echo "Exit after $max steps"


###

echo 'done'
