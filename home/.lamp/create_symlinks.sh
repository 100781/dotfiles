#!/bin/bash 

# httpd.conf #
##############
rm /etc/apache2/httpd.conf
ln -s $HOME/.lamp/apache/httpd.conf /etc/apache2/httpd.conf
echo "Symlinked the apache 'httpd.conf' file"

# apache extra #
################
rm -rf /etc/apache2/extra
ln -s $HOME/.lamp/apache/extra /etc/apache2/extra
echo "Symlinked the apache 'extra' directory"

# mysql my.cnf #
################
rm -rf /etc/mysql/my.cnf
ln -s $HOME/.lamp/mysql/my.cnf /etc/mysql/my.cnf
echo "Symlinked the mysql 'my.cnf' file"

# php php.ini #
###############
rm -rf /usr/local/etc/php/5.4/php.ini
ln -s $HOME/.lamp/php54/php.ini /usr/local/etc/php/5.4/php.ini
echo "Symlinked the php 'php.ini' file"

# php conf.d #
###############
rm -rf /usr/local/etc/php/5.4/conf.d
ln -s $HOME/.lamp/php54/conf.d /usr/local/etc/php/5.4/conf.d
echo "Symlinked the php 'conf.d' file"

# hosts #
#########
rm -rf /etc/hosts
ln -s $HOME/.lamp/hosts /etc/hosts
echo "Symlinked the 'hosts' file"
