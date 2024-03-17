#!/bin/sh

this=$( hostname -s )
for node in r1u34 r1u36 r1u38
do
	if [ "$this" = "$node" ] ; then
		echo "# skip $node"
	else
		rsync -a $1 $node:$1
	fi
done

