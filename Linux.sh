#!/bin/bash
# Updates the system and logs actions

echo "Update started at $(date)" >> /var/log/Linux.log
apt update && apt upgrade -y >> /var/log/Linux.log 2>&1
echo "Update completed at $(date)" >> /var/log/Linux.log