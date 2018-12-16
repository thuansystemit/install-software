#!/bin/bash
LINK_UBUNTU="http://cdimage.ubuntu.com/ubuntu/releases/18.10/release/ubuntu-18.10-server-amd64.iso"

function wget_() {
    wget ${LINK_UBUNTU}
}

wget_