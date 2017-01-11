#!/bin/bash
logintime=`w -h | cut -d " " -f 22`
logindate=`date -d "$logintime" +%s`
now=`date +%s`
let diff="$now - $logindate"
let hrs="$diff / 3600"
let mins="$diff / 60"
let secs="$diff % 60"
echo "$hrs:$mins:$secs"
# echo with printf to get padding (always to digits each)
# also, add switch to turn off seconds
