#!/bin/bash

function checkRootLogin_() {
    if [[ $(id -u) -ne 0 ]] ; then
     echo "Please run as root" ; 
     exit 1 ; 
    fi
}

function install_() {
    apt install -y mysql-server
}

checkRootLogin_
install_