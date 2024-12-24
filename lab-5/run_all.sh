vagrant destroy -f
vagrant up
ansible-galaxy role install -f -r requirements.yml
ansible-playbook -i ./inventories/main/hosts.ini ./playbooks/main.yml