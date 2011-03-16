#!/bin/bash

echo "apt-add-repository ppa:happyaron/ppa"
sudo apt-add-repository ppa:happyaron/ppa

echo "apt-get update"
sudo apt-get update

echo "install openfetion"
sudo apt-get install openfetion
