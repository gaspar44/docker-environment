#!/bin/bash
# Script que obtiene la IP del docker, la asigna a la configuración del Apache, levanta el servicio e impide que el docker muera
# Obtenemos la IP
IP=$(ifconfig eth0 | grep :172 | awk ' { print $2 }')

# Eliminamos los : antes de la IP
IP=${IP:5}  # Eliminamos los 5 primeros caracteres

# Asignamos la IP al apache
echo "ServerName $IP" >> /etc/apache2/apache2.conf

# Levantamos el servicio
service apache2 start

# Aseguramos que no se muera el contenedor
tail -f /dev/null