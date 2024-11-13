vagrant destroy -f
vagrant up
ansible-galaxy role install -f -r requirements.yml
ansible-playbook -i ./inventories/main/hosts.ini --ask-become-pass ./playbooks/collect_static_files.yml
ansible-playbook -i ./inventories/main/hosts.ini ./playbooks/run_nginx.yml
curl --head srv1:80/static/css/styles.css
ansible-playbook -i ./inventories/main/hosts.ini  ./playbooks/run_app.yml
curl --head srv1:80/catalog/