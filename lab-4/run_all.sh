vagrant destroy -f srv1 srv2
vagrant up srv1 srv2
ansible-galaxy role install -f -r requirements.yml
ansible-playbook -i ./inventories/main/hosts.ini ./playbooks/main.yml