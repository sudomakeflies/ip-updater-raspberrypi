#!/bin/sh
### BEGIN INIT INFO
# Provides:          IpUpdater.sh
# Required-Start:    $local_fs
# Required-Stop:     $loca_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Refresh my dynamic ip
# Description:       Refresh my dynamic ip with appengine DNS.
### END INIT INFO
# /etc/init.d/IpUpdater.sh
export USER='pi'
eval cd ~$USER
 
case "$1" in
  start)
    echo "Starting script"
    # run application you want to start
    python2.7 /usr/local/sbin/ipUpdate.py &
    ;;
  stop)
    echo "Stopping example"
    # kill application you want to stop
    killall python2.7
    ;;
  *)
    echo "Usage: /usr/local/sbin/IpUpdater.sh {start|stop}"
    exit 1
    ;;
esac
 
 
exit 0
