#!/bin/bash
echo "Provisioning virtual machine..."

echo "Installing Git"
yum install git -y > /dev/null

echo "Installing Apache"
yum install httpd -y > /dev/null

echo "Installing EPEL"
yum install epel-release -y > /dev/null
