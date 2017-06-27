#!/bin/bash
# AlicFeng https://www.samego.com alic@samego.com 价值源于技术，技术源于分享
# build date 2017.06.11
# last modified date 2017.06.11
# basic ubuntu14.04 32-OS to build LANMP( Linux+Apache+Nginx+MySQL+PHP )

# update source
sudo apt-get update -y

# mysql
sudo apt-get install mysql-server mysql-client -y

# apache2
sudo apt-get install apache2 -y
sudo service apache2 stop

# nginx
sudo apt-get install nginx -y

# php5
sudo apt-get install php5 php5-fpm

# other
sudo apt-get install php5-gd curl libcurl3 libcurl3-dev php5-curl php5-dev libpcre3-dev && \
php5 libapache2-mod-php5 php5-mysql  php5-gd php5-intl php-pear php5-imagick && \
php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode && \
php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-cgi libapache2-mod-auth-mysql && \
libpcre3 libpcre3-dev
