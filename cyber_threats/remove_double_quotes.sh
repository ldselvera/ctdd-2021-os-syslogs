#!/bin/bash
for server in $(ls | grep syslog_log); do cat $server | sed -e 's/^"//' -e 's/"$//' > $server-temp; done
rm *syslog_log
for server in $(ls | grep syslog_log); do mv $server $(echo "$server" | awk -F_ '{print $1 FS "syslog_log"}'); done
