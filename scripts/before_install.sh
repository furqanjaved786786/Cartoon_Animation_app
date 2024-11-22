#!/bin/bash

# Move to the home directory
cd ~

# Download and set up the latest Node.js LTS (e.g., Node.js 18)
curl -sL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh

# Update package lists
sudo apt update

# Install Node.js and npm
sudo apt install -y nodejs npm

# Install PM2 globally
sudo npm install -g pm2

# Confirm installations
node -v
npm -v
pm2 -v

echo "Node.js, npm, and PM2 installation completed successfully."
