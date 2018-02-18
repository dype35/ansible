#!/bin/sh

ANSIBLECONF=/etc/ansible/ansible.cfg

apt-get install openssh-server git python-setuptools

if [ ! -f $ANSIBLECONF ] 
then
    mkdir /etc/ansible
    cp ~/ansible/examples/ansible.cfg /etc/ansible
    
    echo ""
    echo "Merci d'éditer $ANSIBLECONF"
    echo "library        = /home/franck/Documents/ansible/ansible_dir/library"
    echo "hash_behaviour = merge"
    echo "vault_password_file = /home/franck/.vault_pass.txt"
    echo ""

fi
ln -s ~/Documents/ansible/production /etc/ansible/hosts





