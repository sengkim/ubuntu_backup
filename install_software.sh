#!/bin/bash

echo "install some softwares for ubuntu..."

# 右键打开终端
./script/install_right_terminal.sh

# build-essential
./script/install_gcc.sh

# 一个不错的终端环境，同时安排配置文件（透明）
./script/install_terminator.sh

# ubuntu-tweak
./script/install_ubuntu_tweak.sh

# vim and gvim
./script/install_vim.sh

# stardict-gnome
./script/install_stardict_gnome.sh

# openfetion
./script/install_openfetian.sh

# curl
./script/install_curl.sh

# RabbitVCS，类似于TortoiseSVN的工具
./script/install_rabbitvcs.sh

