#!/bin/bash

# Let's just get this out of the way.
sudo -v

# httpd.conf #
##############
mv -n /private/etc/apache2/httpd.conf /private/etc/apache2/httpd.conf.orig
ln -s $HOME/.lamp/apache/httpd.conf /private/etc/apache2/httpd.conf
sudo mkdir /usr/local/var/run/apache2
echo "Symlinked the apache 'httpd.conf' file and created /usr/local/var/run/apache2"

# apache extra #
################
mv -n /private/etc/apache2/extra /private/etc/apache2/extra.orig
ln -s $HOME/.lamp/apache/extra /private/etc/apache2/extra
echo "Symlinked the apache 'extra' directory"

# mysql my.cnf #
################
sudo mkdir /etc/mysql
mv -n /etc/mysql/my.cnf /etc/mysql/my.cnf.orig
ln -s $HOME/.lamp/mysql/my.cnf /etc/mysql/my.cnf
echo "Symlinked the mysql 'my.cnf' file"

# php php.ini #
###############
mv -n /usr/local/etc/php/5.5/php.ini /usr/local/etc/php/5.5/php.ini.orig
ln -s $HOME/.lamp/php55/php.ini /usr/local/etc/php/5.5/php.ini
echo "Symlinked the php 'php.ini' files (php5.5)"

# php conf.d #
###############
mv -n /usr/local/etc/php/5.5/conf.d /usr/local/etc/php/5.5/conf.d.orig
ln -s $HOME/.lamp/php55/conf.d /usr/local/etc/php/5.5/conf.d
echo "Symlinked the php 'conf.d' folders (php5.5)"

# hosts #
#########
mv -n /etc/hosts /etc/hosts.orig
ln -s $HOME/.lamp/hosts /etc/hosts
echo "Symlinked the 'hosts' file"
