#!/bin/bash
LINK_JDK="https://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-linux-x64.tar.gz"
JDK_FOLDER="jdk1.8.0_191"
JDK_FILE_NAME="jdk-8u191-linux-x64.tar.gz"
ETC_ENVIROMENT="/etc/environment"
TARGET_DIR="/opt/tools"

function checkRootLogin_() {
    if [[ $(id -u) -ne 0 ]] ; then
     echo "Please run as root" ; 
     exit 1 ; 
    fi
}

function wget_() {
    wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" ${LINK_JDK}
}

function extract_() {
    tar -vzxf ${JDK_FILE_NAME}
}

function copy_() {
    mv ${JDK_FOLDER} ${TARGET_DIR}/
}

function install_() {
    update-alternatives --install /usr/bin/java java ${TARGET_DIR}/${JDK_FOLDER}/bin/java 100
    update-alternatives --install /usr/bin/javac javac ${TARGET_DIR}/${JDK_FOLDER}/bin/javac 100
}

function setupEnviroment_() {
    echo >> ${ETC_ENVIROMENT}
    echo >> ${ETC_ENVIROMENT}
    echo "export JAVA_HOME=${TARGET_DIR}/${JDK_FOLDER}" >> ${ETC_ENVIROMENT}
    echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ${ETC_ENVIROMENT}
    echo "export PATH" >> ${ETC_ENVIROMENT}
}

function reload_() {
    source ${ETC_ENVIROMENT}
}

checkRootLogin_
wget_
extract_
copy_
install_
setupEnviroment_
reload_
