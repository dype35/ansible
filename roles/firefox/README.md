Ansible role firefox 
====================

This role is designed to install firefox and defaults add-ons.

It has been tested on 

- [Ubuntu](http://www.ubuntu.com/) 15.04 64bit

# Usage

1. Bring this repo into your project as an ansible/ folder.
2. Default add-ons are defined in the file defaults/main.yml
   you can add yours owns.
3. ansible-playbook  -i production desktop.yml --ask-sudo-pass --tags firefox

