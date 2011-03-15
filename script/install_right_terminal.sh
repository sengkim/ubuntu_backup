#!/bin/bash

# 右键菜单中显示终端选项，用于右键打开终端
sudo apt-get install nautilus-open-terminal

(( $? != 0 )) && {
    local target=gnome-terminal
    cat "gnome-terminal" >> $HOME/.gnome2/nautilus-scripts/$target
    chmod +x $target
}

