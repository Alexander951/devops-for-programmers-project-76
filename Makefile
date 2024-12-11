
ansible-ping:
	ansible all -i inventory.ini -m ping
	
prepare-servers:
	ansible-galaxy install -r requirements.yml
	#ansible-playbook playbook.yml -i inventory.ini
