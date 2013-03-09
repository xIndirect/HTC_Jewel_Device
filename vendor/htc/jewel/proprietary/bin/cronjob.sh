#!/bin/sh
/system/bin/mount -o remount,rw /system;
sync;
echo 3 > /proc/sys/vm/drop_caches;
TODAY=$(date +"%m-%d-%Y %H:%M:%S caches dropped");
echo "$TODAY" >> /etc/logs/cronjobs