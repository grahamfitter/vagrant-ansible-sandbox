# Graham's first Vagrant/Ansible experiment

To run this...

## Prequisites

1. Install VirtualBox
2. Install Vagrant

## To Run

1. ```vagrant up```
  - This starts up the VMs
  - Ansible is installed on the ansible-controller VM, the others are unchanged 
  - This Vagrantfile also creates the ansible inventory file "ansible/inventories/01_vagrant_hosts", which is used by ansible later
1. ```vagrant ssh ansible-controller```
1. ```cd /vagrant/ansible```
  - The /vagrant directory is auto-mounted into the VM
1. ```ansible-playbook playbook.yml```
  - Ansible needs to be run from the directory the playbook is in

