#!/bin/bash
ansible-playbook -i ansible/inventory/localhost ansible/playbook-local.yml --tags configs

