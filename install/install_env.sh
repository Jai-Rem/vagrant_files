#!/usr/bin/env bash

# Checks environment state
if [ ! -e /home/vagrant/conf.d/install_env_ok ]
then
  function setup_env {
    sudo apt-get -y update || exit 1
    sudo apt-get install dos2unix || exit 1
    echo “Installation of the environment !” 
    dos2unix /home/vagrant/install/install_nginx.sh /home/vagrant/install/install_nginx.sh
    dos2unix /home/vagrant/install/install_php.sh /home/vagrant/install/install_php.sh
    sudo /bin/bash /home/vagrant/install/install_nginx.sh || exit 1
    sudo /bin/bash /home/vagrant/install/install_php.sh || exit 1
    sudo mkdir /home/vagrant/conf.d || exit 1
    sudo touch /home/vagrant/conf.d/install_env_ok || exit 1
    echo “Environment installed !”
  }
  setup_env
elif [ -d "/etc/php5" ] && [ -d "/etc/nginx" ] ;
then
  echo “Environment already setup !”

fi