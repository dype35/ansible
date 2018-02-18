ansible-playbook -i production site.yml  --ask-sudo-pass
# ansible-playbook -i production site.yml  --syntax-check --list-tasks
#ansible-playbook -i production site.yml  --ask-sudo-pass --tags ntp
# ansible -m setup kerbel
# ansible kerbel -m setup -a "filter=ansible_distribution_release"
# ansible-playbook -i production test.yml  --ask-sudo-pass --tags settings --module-path ~/Documents/ansible/ansible_dir/library
#
# Mise à jour de la bdd sur le vps
# ansible-playbook -i production vps.yml --ask-sudo-pass --tags updatesite --module-path ~/Documents/ansible/ansible_dir/library

# Test windows cnx
# ansible kerzo -i production -m setup
# ansible windows -i production -m win_ping --ask-vault-pass
# ansible-playbook -i production windows.yml --ask-vault-pass

