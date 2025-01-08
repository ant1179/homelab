#!/bin/sh

echo "*************************"
echo "cleaning the devcontainer"
echo "*************************"
CURRENT_DIR=${PWD}
devpod stop .
devpod delete .
cd ../
sudo chown -R ${USER}:${USER} ${CURRENT_DIR}
cd ${CURRENT_DIR}
rm -rf .devpod-internal
