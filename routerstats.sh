#!/bin/sh

dir=`dirname $0`

nice -n -19 $dir/router_cpu.sh
nice -n -19 $dir/router_mem.sh
nice -n -19 $dir/router_net.sh
nice -n -19 $dir/router_ping_ext.sh
nice -n -19 $dir/router_temp.sh
nice -n -19 $dir/router_assoclist.sh
nice -n -19 $dir/router_top.sh
nice -n -19 $dir/router_df.sh
