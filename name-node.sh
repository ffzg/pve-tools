#!/bin/sh -e

(
echo VEID NAME STATUS TYPE CPU MEM DISK NODE
pvesh get /cluster/resources --type vm --output-format json | tee /dev/shm/resources.json \
| jq -r '.[] | "\(.vmid) \(.name) \(.status) \(.type) \(.maxcpu) \(.maxmem) \(.maxdisk) \(.node)"' \
| numfmt --field 6,7 --to iec \
) | column -t
