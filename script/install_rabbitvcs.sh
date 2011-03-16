#!/bin/bash

echo "add-apt-repository ppa:rabbitvcs/ppa"
sudo add-apt-repository ppa:rabbitvcs/ppa

echo "apt-get update"
sudo apt-get update

echo "install rabbitvcs"
sudo apt-get -y install rabbitvcs-core rabbitvcs-nautilus rabbitvcs-cli rabbitvcs-gedit

echo "gconftool icons"
gconftool-2 --set /desktop/gnome/interface/menus_have_icons --type bool true

nautilus -q

