# Instalamos una versión de apache que soporte PHP y se conecte a bases de datos
FROM apache

# Instalamos php, node, jquery
RUN apt-get update && apt-get install -y php libapache2-mod-php php-mcrypt php-mysql nodejs npm

# Instalamos jquery
RUN npm install jquery -g

COPY dir.conf /etc/apache2/mods-available/dir.conf