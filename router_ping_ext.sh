#!/bin/sh

dir=`dirname $0`

name="router_ping_ext"
columns="ms"

pingdest="www.google.com"
p1="$pingdest"
p2=`ping -c1 -W1 $pingdest | grep 'seq=' | sed 's/.*time=\([0-9]*\.[0-9]*\).*$/\1/'`
$dir/todb.sh "$name" "$columns" "$p2" "dst=$p1"

pingdest="www.dn.se"
p1="$pingdest"
p2=`ping -c1 -W1 $pingdest | grep 'seq=' | sed 's/.*time=\([0-9]*\.[0-9]*\).*$/\1/'`
$dir/todb.sh "$name" "$columns" "$p2" "dst=$p1"
