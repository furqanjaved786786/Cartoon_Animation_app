#!/bin/bash

# Change to the working directory
cd /home/ubuntu/server || exit

# Stop and delete all existing PM2 processes for this app
pm2 stop all
pm2 delete all

# Start the application using PM2 with npm start
pm2 start npm --name frontend -- start

# Save PM2 process list to restart on system reboot
pm2 save

# Ensure PM2 starts on reboot
pm2 startup

echo "Application started successfully with PM2."
