#!/bin/bash
sudo apt update -y
sudo apt install -y nginx git
sudo systemctl enable nginx
sudo systemctl start nginx

echo "<h1>🚀 Static Website LIVE on Jarvis Server 🚀</h1>" > /var/www/html/index.html
