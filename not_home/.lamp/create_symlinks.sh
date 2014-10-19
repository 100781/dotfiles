#!/bin/bash 

# httpd.conf #
##############
mv /etc/apache2/httpd.conf /etc/apache2/httpd.conf.orig
ln -s $HOME/.lamp/apache/httpd.conf /etc/apache2/httpd.conf
echo "Symlinked the apache 'httpd.conf' file"

# apache extra #
################
mv /etc/apache2/extra /etc/apache2/extra.orig
ln -s $HOME/.lamp/apache/extra /etc/apache2/extra
echo "Symlinked the apache 'extra' directory"

# mysql my.cnf #
################
mv /etc/mysql/my.cnf /etc/mysql/my.cnf.orig
ln -s $HOME/.lamp/mysql/my.cnf /etc/mysql/my.cnf
echo "Symlinked the mysql 'my.cnf' file"

# php php.ini #
###############
mv /usr/local/etc/php/5.4/php.ini /usr/local/etc/php/5.4/php.ini.orig
mv /usr/local/etc/php/5.5/php.ini /usr/local/etc/php/5.5/php.ini.orig
ln -s $HOME/.lamp/php54/php.ini /usr/local/etc/php/5.4/php.ini
ln -s $HOME/.lamp/php55/php.ini /usr/local/etc/php/5.5/php.ini
echo "Symlinked the php 'php.ini' files (php5.4 & php5.5)"

# php conf.d #
###############
mv /usr/local/etc/php/5.4/conf.d /usr/local/etc/php/5.4/conf.d.orig
mv /usr/local/etc/php/5.5/conf.d /usr/local/etc/php/5.5/conf.d.orig
ln -s $HOME/.lamp/php54/conf.d /usr/local/etc/php/5.4/conf.d
ln -s $HOME/.lamp/php55/conf.d /usr/local/etc/php/5.5/conf.d
echo "Symlinked the php 'conf.d' folders (php5.4 & php5.5)"

# hosts #
#########
mv /etc/hosts /etc/hosts.orig
ln -s $HOME/.lamp/hosts /etc/hosts
echo "Symlinked the 'hosts' file"
