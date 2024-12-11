
ansible-ping:
	ansible all -i inventory.ini -m ping
	
prepare-servers:
	ansible-playbook playbook.yml -i inventory.ini
