#!/bin/bash

# Simple Barista Cafe Deployment Script for Linux

# Create and navigate to temporary directory
sudo mkdir -p /tmp/webapp
cd /tmp/webapp

# Download the Barista Cafe template
sudo curl -LO https://www.tooplate.com/zip-templates/2134_gotto_job.zip

# Install unzip
# For Ubuntu/Debian
sudo apt-get update
sudo apt-get install -y unzip
# For CentOS/RHEL (uncomment if needed)
# sudo yum install -y unzip

# Extract the template
sudo unzip 2134_gotto_job.zip

# Clean the existing web root to remove old content
# For Ubuntu/Debian
sudo rm -rf /var/www/html/*
# For CentOS/RHEL (uncomment if needed)
# sudo rm -rf /var/www/html/*

# Install and start Apache
# For Ubuntu/Debian
sudo apt-get install -y apache2
sudo systemctl restart apache2
# For CentOS/RHEL (uncomment if needed)
# sudo yum install -y httpd
# sudo systemctl restart httpd

# Copy the website files to Apache's web root
# For Ubuntu/Debian
sudo cp -r /tmp/webapp/2134_gotto_job/* /var/www/html/
sudo chown -R www-data:www-data /var/www/html/

# For CentOS/RHEL (uncomment if needed)
# sudo cp -r /tmp/webapp/2134_gotto_job/* /var/www/html/
# sudo chown -R apache:apache /var/www/html/

# Set permissions
sudo chmod -R 755 /var/www/html/

# Cleanup
sudo rm -rf /tmp/webapp

echo "Deployment complete! The website is now available at http://localhost"
echo "Try accessing with a new browser session or clear your browser cache with Ctrl+F5"