#!/bin/bash

function install_() {
    apt-get install -y nodejs
    apt-get install npm
    npm install node-gyp -g
    npm install -g angular-cli
}

install_