#!/bin/bash
set -e

echo "Updating system packages..."
yum update -y

echo "Installing NGINX if not installed..."
amazon-linux-extras install nginx1 -y || yum install nginx -y

echo "Enabling NGINX service..."
systemctl enable nginx
