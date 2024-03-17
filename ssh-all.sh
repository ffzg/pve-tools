#!/bin/sh

for node in r1u34 r1u36 r1u38
do
	stdbuf -o 0 -e 0 ssh -t $node $@ 2>&1 | sed -u "s/^/$node: /"
done

