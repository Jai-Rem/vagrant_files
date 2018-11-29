#!/usr/bin/env bash

function check_and_install_nginx() {
  if [ ! -e /etc/nginx ]
  then
    echo “Installation of Nginx !”
    sudo apt-get -y install nginx || exit 1
    echo “Nginx installed !”
  else
    echo “Nginx already installed !”
  fi 
}

check_and_install_nginx