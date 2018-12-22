#!/bin/bash
LINK_MAVEN="http://mirrors.viethosting.com/apache/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz"
FILE_NAME="apache-maven-3.6.0-bin.tar.gz"
DIR_NAME="apache-maven-3.6.0"
TARGET_DIR="/opt/tools"
ETC_ENVIROMENT="/etc/environment"

function checkRootLogin_() {
    if [[ $(id -u) -ne 0 ]] ; then
     echo "Please run as root" ; 
     exit 1 ; 
    fi
}

function get_() {
    wget ${LINK_MAVEN}
}

function extract_() {
    tar -vzxf ${FILE_NAME}
}

function copy_() {
    mv ${DIR_NAME} ${TARGET_DIR}/
}

function setupEnviroment_() {
    echo >> ${ETC_ENVIROMENT}
    echo >> ${ETC_ENVIROMENT}
    echo "export M3_HOME=${ETC_ENVIROMENT}/${DIR_NAME}" >> ${ETC_ENVIROMENT}
    echo "export PATH=\$PATH:\$M3_HOME/bin" >> ${ETC_ENVIROMENT}
    echo "export PATH" >> ${ETC_ENVIROMENT}
}

function reload_() {
    source ${ETC_ENVIROMENT}
}

checkRootLogin_
get_
extract_
copy_
setupEnviroment_
reload_
