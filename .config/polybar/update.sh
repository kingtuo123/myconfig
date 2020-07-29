#!/bin/bash
last=$(date +%s -r /var/db/repos/gentoo/)
now=$(date +%s)
diff=$((($now-$last)/3600))
day=$(($diff/24))
hour=$(($diff%24))

d=""
if [ $day -eq 1 ];then
    d="day"
else
    d="days"
fi

h=""
if [ $hour -eq 1 ];then
    h="hour"
else
    h="hours"
fi


if [[ $day -eq 0 && $hour -eq 0 ]];then
    echo up to date
elif [ $day -eq 0 ];then
    echo updated $hour $h ago
else
    if [ $hour -eq 0 ];then
        echo updated $day $d ago
    else
        echo updated $day $d $hour $h ago
    fi
fi
