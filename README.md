# Graham's first Vagrant/Ansible experiment

To run this...

## Prequisites

1. Install VirtualBox
2. Install Vagrant

## To Run

1. ```vagrant up```
  - This starts up the VMs
  - Ansible is installed on the ansible-controller VM, the others are blank 
  - This Vagrantfile also creates the ansible inventory file ".vagrant/ansible/inventory", which is used by ansible later
1. ```vagrant ssh ansible-controller```
1. ```cd /vagrant/ansible```
  - The /vagrant directory is auto-mounted into the VM
  - Ansible needs to be run from the directory the playbook is in
1. ```ansible-playbook -i ../.vagrant/ansible/inventory -i groups playbook.yml```
  - The groups inventory file allocates VMs in the Vagrant-created inventory file to Ansible groups of machines

