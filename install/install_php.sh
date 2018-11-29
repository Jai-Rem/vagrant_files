#!/usr/bin/env bash

function check_and_install_php() {
  if [ ! -e /etc/php5 ]
  then
    echo “Installation of PHP 5 FPM !”
    sudo apt-get -y install php5-fpm || exit 1
    echo “PHP 5 FPM installed !”
  else
    echo “PHP 5 FPM already installed !”
  fi 
}

check_and_install_php