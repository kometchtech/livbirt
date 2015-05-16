#!/bin/bash
for POOL in `/usr/bin/virsh pool-list --type=netfs | grep active | cut -f2 -d" "`
do
  /usr/bin/virsh pool-destroy $POOL
done
exit 0
