vagrant destroy -f srv1 srv2
vagrant up srv1 srv2
ansible-playbook -i inventories/main/hosts.ini playbooks/install_docker.yml
ansible-playbook -i inventories/main/hosts.ini playbooks/run_app.yml