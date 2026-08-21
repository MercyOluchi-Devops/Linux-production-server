#!/bin/bash

LOG="/home/mercy/linux-production-server/logs/server_alerts.log"

# Check SSH
if ! systemctl is-active --quiet ssh; then
    echo "$(date): ALERT - SSH service is DOWN" >> "$LOG"
fi

# Check Nginx
if ! systemctl is-active --quiet nginx; then
    echo "$(date): ALERT - Nginx service is DOWN" >> "$LOG"
fi

# Check disk usage
DISK_USAGE=$(df / | awk 'NR==2 {gsub("%",""); print $5}')

if [ "$DISK_USAGE" -ge 80 ]; then
    echo "$(date): ALERT - Disk usage is ${DISK_USAGE}%" >> "$LOG"
fi
