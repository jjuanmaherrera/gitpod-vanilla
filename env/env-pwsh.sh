#!/bin/bash

# Powerhsell environment
# Download package
wget https://github.com/PowerShell/PowerShell/releases/download/v7.3.6/powershell_7.3.6-1.deb_amd64.deb

# Install package
sudo dpkg -i powershell_7.3.6-1.deb_amd64.deb

# Check for require package
sudo apt-get install -f

# Remove downloaded package
sudo rm powershell_7.3.6-1.deb_amd64.deb