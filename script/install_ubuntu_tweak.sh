#!/bin/bash

# add-apt-repository
echo "[!!!] add-apt-repository"
sudo add-apt-repository ppa:tualatrix/ppa

# update
sudo apt-get update

# install
echo "[!!!] install ubuntu-tweak..."
sudo apt-get install ubuntu-tweak

