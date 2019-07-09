#!/bin/bash

if ! [`which ansible`]; then
    yum update -y
    yum install -y epel-release
    yum install -y ansible
fi

ansible-playbook /vagrant/ansible/playbook.yml
