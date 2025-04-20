#!/bin/bash

# Simple Barista Cafe Deployment Script for macOS

# Create and navigate to temporary directory
sudo mkdir -p /tmp/webapp
cd /tmp/webapp

# Download the Barista Cafe template
# Follow any redirects if necessary (-L)
# Save the file locally as the same name in the remote server "2135_mini_finance.zip" (-O)
sudo curl -LO https://www.tooplate.com/zip-templates/2135_mini_finance.zip

# Extract the template
sudo unzip 2135_mini_finance.zip

# Clean the existing web root to remove old content
sudo rm -rf /usr/local/var/www/*

# Restart Apache service
brew services restart httpd

# Copy the website files to Apache's web root
sudo cp -r /tmp/webapp/2135_mini_finance/* /usr/local/var/www/

# Cleanup
sudo rm -rf /tmp/webapp

# Clear browser cache and open the website in your default browser
# The query parameter helps bypass browser cache
open "http://localhost:8080?refresh=$(date +%s)"