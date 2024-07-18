#!/bin/sh -e

pvesh get /cluster/resources --type vm --output-format json | tee /dev/shm/resources.json \
| jq -r '.[] | "\(.vmid) \(.name) \(.status) \(.type) \(.node)"' | column -t
