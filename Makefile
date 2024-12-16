
ansible-ping:
	ansible all -i inventory.ini -m ping
	
install:
	ansible-galaxy install -r requirements.yml
	ansible-playbook playbook.yml -i inventory.ini -t install --vault-password-file .password -vv

deploy:
	ansible-playbook playbook.yml -i inventory.ini -t deploy --vault-password-file .password	

install-datadog:
	ansible-galaxy role install datadog.datadog
	ansible-playbook playbook.yml -i inventory.ini -t install-datadog --vault-password-file .password	
	
create-vault:
	ansible-vault encrypt group_vars/webservers/vault.yml 

edit-vault:
	ansible-vault edit group_vars/webservers/vault.yml	
	
