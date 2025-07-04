#!/bin/bash

# Папка за архивиране
SOURCE_DIR="./www"

# Къде да се пазят архивите
BACKUP_DIR="./backups"

# Формат на името: backup-YYYY-MM-DD-HHMMSS.tar.gz
TIMESTAMP=$(date +"%Y-%m-%d-%H%M%S")
ARCHIVE_NAME="backup-$TIMESTAMP.tar.gz"

# Създаване на папка за архиви ако не съществува
mkdir -p "$BACKUP_DIR"

# Архивиране
echo " Създаване на архив от '$SOURCE_DIR'..."
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$SOURCE_DIR"

# Потвърждение
if [ $? -eq 0 ]; then
  echo " Архивът е създаден успешно: $BACKUP_DIR/$ARCHIVE_NAME"
else
  echo " Възникна грешка при архивирането."
fi
