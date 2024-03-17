#!/bin/sh

for node in r1u34 r1u36 r1u38
do
	ssh $node $@ 2>&1 | sed "s/^/$node: /"
done

