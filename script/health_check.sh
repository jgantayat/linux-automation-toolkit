#!/usr/bin/env bash
# health_check.sh - quick snapshot of server health (v0)

HOST=$(hostname)
NOW=$(date '+%Y-%m-%d %H:%M:%S')
CORES=$(nproc)
DISK_USED=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "====== Health Check: ${HOST} @ ${NOW} ======"
echo
echo "------ Uptime & Load: (cores: ${CORES}) ------"
uptime
echo
echo "--- Memory ---"
free -h
echo
echo "Root disk used: ${DISK_USED}%"
echo
echo "--- Disk (root fileSystem) ---"
df -h /

