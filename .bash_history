sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
sudo apt-get install git
git --version
ls
ls -l
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone https://github.com/francosappa57/UTNFRA_SO_2do_TP_Sappa.git
ls
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
cat /etc/group
sudo usermod -aG docker sappa
sudo fdisk -l
sudo fdisk /dev/sdc 
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
wipefs -a /dev/sdc1 /dev/sdd1 /dev/sdd2
wipefs -a /dev/sdc1 
sudo wipefs -a /dev/sdc1 /dev/sdd1 /dev/sdd2
sudo pvcreate /dev/sdc1 /dev/sdd1 /dev/sdd2
sudo vgcreate vg_datos /dev/sdd2
sudo vgcreate vg_datos /dev/sdc1
sudo vgextend vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo vgs
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo vgs
sudo lvcreate -L 1.49G vg_datos -n lv_workareas
sudo vgs
sudo lvcreate -L 508M vg_temp -n lv_swap
sudo vgs
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mkdir /work
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo systemctl restart docker
sudo systemctl status docker
ls
cd RTA_Examen_20251117/
ls
vim Punto_A.sh 
cat Punto_A.sh 
cd
ls
cd UTN-FRA_SO_Examenes
ls
202406/docker/
cd 202406/docker/
ls
vim index.html 
cat index.html 
docker login -u francosappa
sudo vim dockerfile
ls
docker build -t francosappa/web1-sappa:latest .
docker image list
docker run -d -p 81:80 francosappa/web1-sappa:latest 
curl localhost:81
docker push francosappa/web1-sappa:latest 
cd
cd UTN-FRA_SO_Examenes/202406/docker
cat index.html 
sudo vim run.sh
ls
sudo chmod +x run.sh 
ls
cd 
cd RTA_Examen_20251117/
cat /UTN-FRA_SO_Examenes/202406/docker/run.sh
cd
cat UTN-FRA_SO_Examenes/202406/docker/run.sh 
cd RTA_Examen_20251117/
vim Punto_C.sh 
cat Punto_C.sh 
cd
cd UTN-FRA_SO_Examenes/202406/ansible/
ls
cat ~/RTA_Examen_20251117/Punto_C.sh 
cat ~/RTA_Examen_20251117/Punto_D.sh 
ls -la
mkdir /tmp/2do_parcial/{alumno,equipo}
sudro mkdir /tmp/2do_parcial/{alumno,equipo}
sudo mkdir /tmp/2do_parcial/{alumno,equipo}
sudo mkdir ./tmp/2do_parcial/{alumno,equipo}
sudo mkdir -p /tmp/2do_parcial/{alumno,equipo}
ls
sudo mkdir -p ./tmp/2do_parcial/{alumno,equipo}
ls
rm -r /tmp/2do_parcial/{alumno,equipo}
sudo rm -r /tmp/2do_parcial/{alumno,equipo}
ls
cd tmp/
ls
cd 2do_parcial/
ls
cd ..
sudo rm -r tmp/2do_parcial/{alumno,equipo}
ls
rm -rf tmp/2do_parcial/{alumno,equipo}
ls
cd tmp/
ls
cd ..
cat inventory/
cd inventory/
ls -la
cd ..
ls -la
rm -rf ./tmp/2do_parcial/equipo
ls -l
rm -r ./tmp/2do_parcial/equipo
rm -r tmp/2do_parcial/equipo
cat playbook.yml 
cd
ls
ls -la
cd .ansible/
ls -la
cd tmp/
ls -la
cd
cd UTN-FRA_SO_Examenes/202406/ansible
ls
cat ansible.cfg 
cat roles/
cd roles/
ls -la
cd 2do_parcial/
ls -la
cd tests/
ls -la
cat test.yml 
cd ..
ls -la
cd tasks/
ls -la
cat main.yml 
cd ..
ls -la
cd ..
ls -la
cd inventory/
ls -la
cd ..
cd roles/
cd 2do_parcial/
cd tests/
cat inventory 
ls -la
cd ..
ls -la
cd
cd RTA_Examen_20251117/
cat Punto_C.sh 
cd 
ls
cd UTN-FRA_SO_Examenes
ls
cd 202406
ls
cd docker/
ls
cat run.sh 
vim run.sh 
sudo vim run.sh 
cat run.sh 
cd
cd RTA_Examen_20251117/
cat Punto_C.sh 
cd /usr/local/bin/
ls
ls -la
vim sappa-AltaUser-Groups.sh
sudo vim sappa-AltaUser-Groups.sh
cat sappa-AltaUser-Groups.sh 
sudo chmod +x sappa-AltaUser-Groups.sh 
ls
sappa-AltaUser-Groups.sh 
sudo sappa-AltaUser-Groups.sh ~/RTA_Examen_20251117/202406/bash_script/Lista_Usuarios.txt sappa
sudo sappa-AltaUser-Groups.sh RTA_Examen_20251117/202406/bash_script/Lista_Usuarios.txt sappa
sudo ./sappa-AltaUser-Groups.sh RTA_Examen_20251117/202406/bash_script/Lista_Usuarios.txt vagrant
sudo ./sappa-AltaUser-Groups.sh /RTA_Examen_20251117/202406/bash_script/Lista_Usuarios.txt vagrant
sudo ./sappa-AltaUser-Groups.sh ~/RTA_Examen_20251117/202406/bash_script/Lista_Usuarios.txt vagrant
cd
pwd
cd /usr/local/bin
sudo ./sappa-AltaUser-Groups.sh ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt sappa
sudo sappa-AltaUser-Groups.sh ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt sappa
sudo ./sappa-AltaUser-Groups.sh ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt /sappa
./sappa-AltaUser-Groups.sh sappa ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
./sappa-AltaUser-Groups.sh ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt sappa
vim sappa-AltaUser-Groups.sh 
sudo vim sappa-AltaUser-Groups.sh 
./sappa-AltaUser-Groups.sh ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt sappa
sudo vim sappa-AltaUser-Groups.sh 
./sappa-AltaUser-Groups.sh ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt sappa
sudo group
cd
sudo groups
sudo group
cat /etc/group
sudo cat /etc/shadow
cd RTA_Examen_20251117/
sudo vim Punto_B.sh 
cd
sudo vgs
sudo fdisk /dev/sdc
sudo umont /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo umount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo umount /dev/mapper/vg_datos-lv_workareas /work/
swapoff /dev/mapper/vg_temp-lv_swap
sudo swapoff /dev/mapper/vg_temp-lv_swap
sudo fdisk /dev/sdc
sudo umount /home/
cd UTN-FRA_SO_Examenes/
ls
202406/ansible/
cd 202406/ansible/
ls
cd roles
ls -la
cd 2do_parcial/
ls -la
cd tasks/
ls -la
cat main.yml 
sudo vim main.yml 
cat main.yml 
cd
cd /UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial
cd UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial
ls -la
mkdir templates
ls -la
cd templates/
cat << FIN >> ./template_01.j2
ls -la
sudo vim template_01.j2
sudo vim template_02.j2
ls
cat template_01.j2 
cd ..
cd tasks/
ls
sudo vim main.yml 
cd ..
ls -la
ansible-playbook -i inventory/host playbook.yml -l testing
ansible-playbook -i inventory/hosts playbook.yml -l testing
cd inventory/
ls- la
ls -la
cat host
cd ..
ansible-playbook -i playbook.yml
cd inventory/
cd hosts
sudo cat hosts 
sudo vim hosts
cd ..
ansible-playbook -i inventory/hosts playbook.yml -l produccion
cd roles/2do_parcial/tasks/
sudo vim main.yml 
cd ..
ansible-playbook -i inventory/hosts playbook.yml -l testing
cd inventory/
sudo vim hosts
cd ..
ansible-playbook -i inventory/hosts playbook.yml -l testing
ansible-playbook -i inventory/hosts playbook.yml -l produccion
ls -la
sudo vim playbook.yml 
cd roles/2do_parcial/
ls -la
cd vars
ls -la
cat main.yml 
sudo vim main.yml 
cd ..
cd tests/
ls
cds ..
cd ..
cd tasks/
ls
cat main.yml 
sudo vim main.yml 
cd ..
ansible-playbook -i inventory/hosts playbook.yml -l produccion
sudo ansible-playbook -i inventory/hosts playbook.yml -l produccion
cd roles/2do_parcial/tests/
ls
cd ..
cd templates/
sudo vim template_01.j2 
cd ..
sudo ansible-playbook -i inventory/hosts playbook.yml -l produccion
cd roles/2do_parcial/
cd tasks/
sudo vim main.yml 
cd ..
sudo ansible-playbook -i inventory/hosts playbook.yml -l produccion
cd
ls -ls
ls -la
cd /tmp/2do_parcial/
ls
cd alumno/
ls
cat datos_alumno.txt 
cd ..
cd equipo/
ls
cat datos_equipo.txt 
vi sudo
visudo
sudo visudo
cd
cat history << FIN > ./RTA_Examen_20251117/Punto_D.sh 
cd RTA_Examen_20251117/
sudo vim Punto_D.sh 
ls
cat Punto_A.sh 
cat Punto_B.sh 
cat Punto_C.sh 
cat Punto_D.sh 
cd ..
ls
cd UTNFRA_SO_2do_TP_Sappa/
ls
cd
cp -r UTN-FRA_SO_Examenes/202406/  ~/UTNFRA_SO_2do_TP_Sappa/
cd UTNFRA_SO_2do_TP_Sappa/
ls
cd 202406/
ls
cat script_Precondicion.sh 
cd
cp -r ~/RTA_Examen_20251117/ ~/UTNFRA_SO_2do_TP_Sappa/
cd UTNFRA_SO_2do_TP_Sappa/
ls
cd RTA_Examen_20251117/
ls
cd 
man cp
cp -r /usr/local/bin/sappa-AltaUser-Groups.sh ~/UTNFRA_SO_2do_TP_Sappa/RTA_Examen_20251117/
cd
cd UTNFRA_SO_2do_TP_Sappa/
cd RTA_Examen_20251117/
ls
cat sappa-AltaUser-Groups.sh 
cd
history -a
cat ~/.bash_history
