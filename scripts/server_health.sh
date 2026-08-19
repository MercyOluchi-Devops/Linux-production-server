#!/bin/bash

echo "======================================"
echo "     LINUX SERVER HEALTH CHECK"
echo "======================================"

echo ""
echo "DATE:"
date

echo ""
echo "UPTIME:"
uptime

echo ""
echo "DISK USAGE:"
df -h /

echo ""
echo "MEMORY USAGE:"
free -h

echo ""
echo "NGINX STATUS:"
if systemctl is-active --quiet nginx; then
    echo "Nginx: RUNNING"
else
    echo "Nginx: NOT RUNNING"
fi

echo ""
echo "SSH STATUS:"
if systemctl is-active --quiet ssh; then
    echo "SSH: RUNNING"
else
    echo "SSH: NOT RUNNING"
fi

echo ""
echo "======================================"
echo "       HEALTH CHECK COMPLETE"
echo "======================================"
