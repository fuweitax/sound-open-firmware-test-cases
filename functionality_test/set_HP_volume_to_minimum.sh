#!/bin/bash

#Get mixer properties
amixer -D hw:sofbytcrrt5651 sset 'HP' 0 > /dev/null
if [ $? -ne 0 ]; then
	echo "set HP volume to minimum FAIL"
	exit 1
else
	exit 0
fi
