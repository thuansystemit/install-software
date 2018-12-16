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

function createUser_() {
    CREATE USER 'test1'@'%' IDENTIFIED BY 'sayHell0@!#$';
    GRANT ALL PRIVILEGES ON demo.* TO 'test1'@'%';
    FLUSH PRIVILEGES;
}

checkRootLogin_
install_