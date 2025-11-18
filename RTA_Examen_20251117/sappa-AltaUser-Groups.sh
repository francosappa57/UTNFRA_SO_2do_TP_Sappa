CLAVE=$2
LISTA=$1
ANT_IFS=$IFS
IFS=$'\n'
for LINEA in `cat $LISTA |  grep -v ^#`
do
        USUARIO=$(echo  $LINEA |awk -F ',' '{print $1}')
        GRUPO=$(echo  $LINEA |awk -F ',' '{print $2}')
        HOME=$(echo  $LINEA |awk -F ',' '{print $3}')
	USR_CLAVE=$(sudo grep $CLAVE /etc/shadow | awk -F ':' '{print$2}')
	sudo groupadd $GRUPO	
        sudo useradd -m -s /bin/bash -g $GRUPO -d $HOME -p $USR_CLAVE $USUARIO
done
IFS=$ANT_IFS
