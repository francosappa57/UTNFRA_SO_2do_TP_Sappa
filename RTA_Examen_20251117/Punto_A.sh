sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo wipefs -a /dev/sdc1 /dev/sdd1 /dev/sdd2
sudo pvcreate /dev/sdc1 /dev/sdd1 /dev/sdd2
sudo vgcreate vg_datos /dev/sdd2
sudo vgextend vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.49G vg_datos -n lv_workareas
sudo lvcreate -L 508M vg_temp -n lv_swap
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mkdir /work
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/mapper/vg_temp-lv_swap
