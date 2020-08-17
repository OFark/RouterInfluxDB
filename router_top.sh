#!/bin/sh

dir=`dirname $0`

name="router_top"
columns="kb"

top -bn1 | sed 's/<//g' |  awk '/^( )+[0-9]+/ {print $9,$5}' | uniq | awk '$2 > 0 {print $0}' |  while read line; do
    points=$( echo $line | sed 's/^[^ ]* //g' )
	proc=$( echo $line | sed 's/ .*$//g' )
	$dir/todb.sh "$name" "$columns" "$points" "proc=$proc"	
done