#!/bin/bash
# Runs ansible-playbook with correct inventory args, followed by other args provided to script

cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1

ansible-playbook -i ../.vagrant/ansible/inventory -i groups $*

