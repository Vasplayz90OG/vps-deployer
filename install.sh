#!/bin/bash
echo "🚀 ArizCloud VPS Deployer Starting..."

# Update & upgrade
sudo apt update -y && sudo apt upgrade -y

# Install Docker
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker
docker --version

# Custom commands (change as you want)
docker run -d --name my-nginx -p 8080:80 nginx
echo "✅ Nginx deployed at http://<your-vps-ip>:8080"

echo "Hello from ArizCloud!" > /root/arizcloud.txt

echo "✅ Deployment Finished!"
