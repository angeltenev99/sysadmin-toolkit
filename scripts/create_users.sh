#!/bin/bash

# Проверка за име на потребителя
if [ -z "$1" ]; then
  echo "Употреба: $0 username"
  exit 1
fi

USERNAME=$1
SSH_DIR="/home/$USERNAME/.ssh"
PUB_KEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICexamplePublicKeyHere потребител@машина"

# Създаване на потребител
echo "Създаване на потребител $USERNAME..."
sudo adduser --disabled-password --gecos "" $USERNAME

# Създаване на SSH директория
echo "Настройка на SSH достъп..."
sudo mkdir -p $SSH_DIR
echo "$PUB_KEY" | sudo tee $SSH_DIR/authorized_keys > /dev/null
sudo chmod 700 $SSH_DIR
sudo chmod 600 $SSH_DIR/authorized_keys
sudo chown -R $USERNAME:$USERNAME $SSH_DIR

# Добавяне към групата sudo
echo "Добавяне на $USERNAME към sudo групата..."
sudo usermod -aG sudo $USERNAME

echo "Готово! Потребителят $USERNAME е създаден с SSH достъп."
