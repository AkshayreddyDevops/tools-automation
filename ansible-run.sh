git pull
ansible-playbook -i $1, tools-setup.yml -e ansible_user=ec2-user -e
ansible_password=DevOps321 -e roles=github-runner