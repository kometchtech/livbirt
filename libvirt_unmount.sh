#!/bin/bash
for VPOOL in `/bin/mount -t nfs4 | /usr/bin/awk '{ print $3}'`
do
  /bin/umount -f -l $VPOOL
done
exit 0
