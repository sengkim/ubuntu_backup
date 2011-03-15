#!/bin/bash

# install
echo "[!!!] install terminator..."
sudo apt-get install terminator

# setting config
echo "-->>> check config files."
f=terminator.tgz
cf=
[[ -r $f ]] && cf=$f
[[ -z "$cf" && -r config/$f ]] && cf=config/$f
[[ -z "$cf" && -r ../config/$f ]] && cf=../config/$f

echo $cf
[[ -n "$cf" && -r $cf ]] && {
    echo "-->>> install config files."
    tar zxf $cf -C $HOME
    exit 0
}

echo "-->>> have no found config files."
unset f cf

