#!/bin/bash

component=$1
dnf install ansible -y
ansible-pull -U https://github.com/Venkat53253/ansible-roles1.git -e component=$1 -e env=$2 main.yaml