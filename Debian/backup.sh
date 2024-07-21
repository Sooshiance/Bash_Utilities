#!/bin/bash


# Variables
DB_NAME="your_database_name"
DB_USER="your_database_user"
BACKUP_DIR="/path/to/backup/directory"


# Created at (Date followed by Time)
DATE=$(date +%Y%m%d%H%M%S)


BACKUP_FILE="$BACKUP_DIR/$DB_NAME-$DATE.sql"


# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR


# Perform the backup
pg_dump -U $DB_USER $DB_NAME > $BACKUP_FILE


# Check if the backup was successful
if [ $? -eq 0 ]; then
echo "Backup successful: $BACKUP_FILE"
else
echo "Backup failed"
fi
