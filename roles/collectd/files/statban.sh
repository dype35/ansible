#!/bin/sh

HOSTNAME="${COLLECTD_HOSTNAME:-localhost}"
INTERVAL="${COLLECTD_INTERVAL:-300}"


 while sleep "$INTERVAL"; do
    h1=`date +"%Y-%m-%d %k:%M"`
    h0=`date --date="$INTERVAL second ago"  +"%Y-%m-%d %k:%M"`

#    echo $h0 $h1

    VALUE=`sed -n "/$h0/,/$h1/p" /var/log/fail2ban.log | grep "ssh\] Ban " | wc -l`
   echo "PUTVAL \"$HOSTNAME/fail2ban-ssh/gauge\" interval=$INTERVAL N:$VALUE"
 done

