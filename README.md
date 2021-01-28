# Graham's first Vagrant/Ansible experiment

To run this...

## Prequisites

1. Install VirtualBox
2. Install Vagrant

## To Run Playbook

1. ```vagrant up```
  - This starts up the VMs
  - Ansible is installed on the ansible-controller VM, the others are unchanged 
  - This Vagrantfile also creates the ansible inventory file "ansible/inventories/01_vagrant_hosts", which is used by ansible later
1. ```vagrant ssh ansible-controller```
1. ```cd /vagrant/ansible```
  - The /vagrant directory is auto-mounted into the VM
1. ```ansible-playbook playbook.yml```
  - Ansible needs to be run from the directory the playbook is in

## To Run Molecule Tests

1. logout and ```vagrant-ssh``` node-2 again
  - The docker_ce role adds vagrant to the docker group during the playbook, which isn't dynamically set in the shell
1. ```cd /vagrant/ansible/roles/kubectl```
1. ```molecule test```
  - Runs test for role
1. ```cd /vagrant/ansible/roles/k3d```
1. ```molecule test```
  - Runs test for role

TODO work out how to test all roles together

