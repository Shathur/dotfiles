#!/bin/bash
logintime=`w -h | cut -d " " -f 22`
logindate=`date -d "$logintime" +%s`
now=`date +%s`
let diff="$now - $logindate"
# echo $diff
let hrs="$diff / 3600"
let mins="($diff / 60) - $hrs * 60"
let secs="$diff % 60"
if [ "$1" = "-s" ]; then
    printf '%d:%02d:%02d\n' "$hrs" "$mins" "$secs"
else
    printf '%d:%02d\n' "$hrs" "$mins"
fi
