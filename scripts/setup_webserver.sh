#!/bin/bash

echo "Обновяване на списъка с пакети..."
sudo apt update

echo "Инсталиране на уеб сървъра Nginx..."
sudo apt install -y nginx

echo "Стартиране на nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Статус на nginx:"
sudo systemctl status nginx | head -n 10
