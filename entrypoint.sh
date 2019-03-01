#!/bin/sh
echo "$DOCKERAGS"
/bin/sh -c "/usr/local/bin/dockerd-entrypoint.sh $DOCKERDARGS &"
sleep 1
$@

if [ "$DAEMON" == "true" ]; then
	while true; do
		sleep 1
	done
fi
