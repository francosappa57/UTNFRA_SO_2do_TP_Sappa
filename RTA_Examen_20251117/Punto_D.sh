sudo vim main.yml
mkdir templates
sudo vim template_01.j2
sudo vim template_02.j2
sudo vim playbook.yml
sudo ansible-playbook -i inventory/hosts playbook.yml -l produccion
