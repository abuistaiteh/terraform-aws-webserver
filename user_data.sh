#!/bin/bash
set -eux

yum update -y

# Install nginx
amazon-linux-extras enable nginx1 || true
yum install -y nginx

# Start and enable nginx
systemctl enable nginx
systemctl start nginx

# Create a simple webpage
echo "<h1>Deployed with Terraform on Amazon Linux</h1>" > /usr/share/nginx/html/index.html