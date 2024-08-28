#!/bin/bash

# PostgreSQL settings
DB_USER="your_username"
DB_NAME="your_database_name"

# Backup directory
BACKUP_DIR="/path/to/backup/directory"
DATE=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$BACKUP_DIR/$DB_NAME-$DATE.sql"

# Perform the backup
pg_dump -U $DB_USER $DB_NAME > $BACKUP_FILE

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup of $DB_NAME completed successfully. File saved to $BACKUP_FILE"
else
    echo "Backup of $DB_NAME failed"
fi
