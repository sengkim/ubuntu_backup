#!/bin/bash

# install vim and gvim
echo "[!!!] install vim and gvim"
sudo apt-get -y install vim vim-gnome

# setting config
echo "-->>> check config files."
f=vim.tgz
cf=
[[ -r $f ]] && cf=$f
[[ -z "$cf" && -r config/$f ]] && cf=config/$f
[[ -z "$cf" && -r ../config/$f ]] && cf=../config/$f

[[ -n "$cf" && -r $cf ]] && {
    echo "-->>> install config files."
    tar zxf $cf -C /tmp
    [[ -f $HOME/.vimrc ]] || touch $HOME/.vimrc
    echo '
    if filereadable("$HOME/.vimrc.local")
        source ~/.vimrc.local
        endif
    ' >> /$HOME/.vimrc
    mv /tmp/vimrc.local $HOME/.vimrc.local
    sudo mv /tmp/gvimrc.local /etc/vim
    exit 0
}

unset f cf

