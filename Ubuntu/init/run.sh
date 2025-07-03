#!/bin/bash

# This script automates the installation of Ansible on a fresh Ubuntu system.
# It updates package lists, installs necessary tools, adds the Ansible PPA,
# and finally installs Ansible.

echo "Starting Ansible installation..."

# Step 1: Update package lists
echo "Updating package lists..."
sudo apt update -y

# Step 2: Install software-properties-common (for add-apt-repository)
echo "Installing software-properties-common..."
sudo apt install -y software-properties-common

# Step 3: Add the Ansible PPA (Personal Package Archive) for the latest stable version
echo "Adding Ansible PPA..."
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Step 4: Install Ansible
echo "Installing Ansible..."
sudo apt install -y ansible

echo "Ansible installation complete."
echo "You can now verify the installation by running: ansible --version"

