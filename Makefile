install:
	# sudo apt-add-repository ppa:ansible/ansible
	sudo apt install -y ansible
	ansible-galaxy collection install community.general

run:
	ansible-playbook -i inventory ansible.yml --ask-vault-pass

sshgen:
	ssh-keygen -t ed25519 -C "xandors@gmail.com"

git-clone:
	git clone git@github.com:xandors/ansible-local.git
