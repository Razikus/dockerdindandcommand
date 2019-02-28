#!/bin/sh
echo "$DOCKERAGS"
/bin/sh -c "/usr/local/bin/dockerd-entrypoint.sh $DOCKERDARGS &"
sleep 1
$@
