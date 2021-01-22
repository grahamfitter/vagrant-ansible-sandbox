#!/bin/sh
# Installs Ansible
sudo apt-get update
sudo apt-get install -y python3-pip

pip3 install ansible
ansible --version

