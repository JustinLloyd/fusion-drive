#! /bin/bash

if [ -z "$1" ]
  then
    echo "No argument supplied"
fi

BACKING_STORE_DISK=$1

diskutil eraseDisk HFS+ BackingStore /dev/${BACKING_STORE_DISK}
RAM_DISK_ID=$(hdiutil attach -nomount ram://$((16*1024*1024)))
CACHE_DISK=$(diskutil eraseDisk HFS+ "RAM Disk" ${RAM_DISK_ID} | tail -n 1 | sed 's/Finished erase on //')
TIERED_DISK=$(diskutil apfs createContainer -main ${CACHE_DISK}s2 -secondary ${BACKING_STORE_DISK}s2 | grep 'Disk from APFS operation' | sed 's/Disk from APFS operation\: //')
diskutil apfs addVolume ${TIERED_DISK} APFS WorkDrive
