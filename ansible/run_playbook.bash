#!/bin/bash
ansible-playbook -i inventory/localhost playbook-local.yml $@
