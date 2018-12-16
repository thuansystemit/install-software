#!/bin/bash

function install_() {
    npm install -y nodejs
    apt install npm
    npm install -g angular-cli
}

install_