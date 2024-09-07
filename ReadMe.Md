#Ansible Topics
Ubuntu 22.04 
Installing Ansible :
apt install -y unzip net-tools jq
sudo apt update
sudo apt install software-properties-common
sudo ass-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
ansible-config init --disabled > ansible.cfg


0.Enable call backs in ansible.cfg
[defaults]
host_key_checking-False
remote_user=ubuntu
private_key_file=/etc/ansible/ansiblekey.pem
callbacks_enabled = timer, profile_tasks, profile_roles
#the above provided playbook and task excution time which can allow us to identiy
slow running playbooks.
Enable Ansible Log in export ANSIBLE_LOG_PATH=~/ansible.log
export ANSIBLE_DEBUG=True

1.Adoc Commands *
ansible -i invfile pvt -m ping
