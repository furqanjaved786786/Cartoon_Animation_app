#!/bin/bash

# Define the working directory
WORK_DIR="/home/ubuntu/server"

# Change to the working directory
echo "Changing to the application directory: $WORK_DIR"
cd "$WORK_DIR" || { echo "Directory $WORK_DIR not found. Exiting."; exit 1; }

# Remove unused files and directories
echo "Removing old node_modules and build directories..."
rm -rf node_modules
rm -rf build

# Install dependencies and build the React application
echo "Installing node modules..."
npm install

echo "Building the React application..."
npm run build

echo "Script executed successfully."
