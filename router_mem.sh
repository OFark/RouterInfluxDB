#!/bin/sh

dir=`dirname $0`

name="router_mem"
columns="used_kb free_kb used_swap_kb free_swap_kb"
#points=`top -bn1 | head -3 | awk '/Mem/ {print $2,$4}' | sed 's/K//g'`
points=`free | awk '/Mem|Swap/ {print $3,$4}' | tr '\n' ' '`

$dir/todb.sh "$name" "$columns" "$points"
