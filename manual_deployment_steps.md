# Manual Apache Deployment Guide

This guide provides instructions for manually deploying the Barista Cafe website template to an Apache web server on both macOS and Linux systems.

## Deployment on macOS

### Step 1: Download and extract the template

```bash
# Switch to root user
sudo -i

# Create and navigate to a temporary directory
mkdir -p /tmp/webapp
cd /tmp/webapp

# Download the Barista Cafe template
curl -LO https://www.tooplate.com/zip-templates/2137_barista_cafe.zip

# Extract the template
unzip 2137_barista_cafe.zip
```

### Step 2: Install and configure Apache

```bash
# Return to regular user (exit from root)
cd ~
exit

# Install Apache using Homebrew
brew install httpd

# Start Apache service
brew services start httpd

# Test if Apache is running
curl http://localhost:8080

# Check service status
brew services list
```

### Step 3: Deploy the website

```bash
# Copy the website files to Apache's web root
cp -r /tmp/webapp/2137_barista_cafe/* /usr/local/var/www/

# Open the website in your default browser
open http://localhost:8080
```

## Deployment on Linux

### Step 1: Download and extract the template

```bash
# Switch to root user
sudo -i

# Create and navigate to a temporary directory
mkdir -p /tmp/webapp
cd /tmp/webapp

# Download the Barista Cafe template
curl -LO https://www.tooplate.com/zip-templates/2137_barista_cafe.zip

# Install unzip if not already installed (depends on your distribution)
# For Ubuntu/Debian:
apt-get update
apt-get install unzip
# For CentOS/RHEL:
yum install unzip

# Extract the template
unzip 2137_barista_cafe.zip
```

### Step 2: Install and configure Apache

```bash
# For Ubuntu/Debian
apt-get update
apt-get install apache2
systemctl start apache2
systemctl enable apache2

# For CentOS/RHEL
yum install httpd
systemctl start httpd
systemctl enable httpd

# Verify Apache is running
curl http://localhost
```

### Step 3: Deploy the website

```bash
# For Ubuntu/Debian
cp -r /tmp/webapp/2137_barista_cafe/* /var/www/html/
chown -R www-data:www-data /var/www/html/

# For CentOS/RHEL
cp -r /tmp/webapp/2137_barista_cafe/* /var/www/html/
chown -R apache:apache /var/www/html/

# Set proper permissions
chmod -R 755 /var/www/html/

# View the website by opening a browser and navigating to:
# http://localhost
```