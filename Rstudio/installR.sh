# Install R + RStudio on Ubuntu 16.04

apt-key adv –keyserver keyserver.ubuntu.com –recv-keys E084DAB9

# Ubuntu 12.04: precise
# Ubuntu 14.04: trusty
# Ubuntu 16.04: xenial
# Basic format of next line deb https://<my.favorite.cran.mirror>/bin/linux/ubuntu <enter your ubuntu version>/
add-apt-repository 'deb https://ftp.ussg.iu.edu/CRAN/bin/linux/ubuntu bionic/'
apt update
apt install -y r-base r-base-dev

# Download and Install RStudio
apt install -y  gdebi-core
wget https://download1.rstudio.org/rstudio-xenial-1.1.463-amd64.deb
dpkg -i rstudio-xenial-1.1.463-amd64.deb
apt install -f -y
#apt install -y default-jre
#R CMD javareconf
apt install -y libcurl4-openssl-dev libssl-dev libxml2-dev libxslt1-dev