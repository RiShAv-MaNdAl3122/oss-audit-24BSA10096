#!/bin/bash
# Script 3: Disk and Permission Auditor

# Array of directories including Python's library path
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/usr/lib/python3")

echo "==============================="
echo "   Directory Audit Report   "
echo "==============================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions and sizes safely
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(sudo du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done
