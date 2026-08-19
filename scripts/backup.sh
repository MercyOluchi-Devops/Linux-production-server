#!/bin/bash

# linux production server - Automated Backup Script

DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_DIR="$HOME/linux-production-server/backups/automated/$DATE"

mkdir -p "$BACKUP_DIR"

# Back up website files
sudo tar -czf "$BACKUP_DIR/website.tar.gz" /var/www/html

# Back up Nginx configuration
sudo tar -czf "$BACKUP_DIR/nginx-config.tar.gz" /etc/nginx

# Back up SSH configuration
sudo cp /etc/ssh/sshd_config "$BACKUP_DIR/sshd_config"

# Create a backup log
echo "Backup completed: $(date)" > "$BACKUP_DIR/backup.log"

echo "Backup completed successfully: $BACKUP_DIR"
