#!/bin/bash

# 右键菜单中显示终端选项，用于右键打开终端
echo "[!!!] install nautilus-open-terminal..."
sudo apt-get install nautilus-open-terminal

(( $? != 0 )) && {
    target=gnome-terminal
    echo "[!!!] install nautilus-open-terminal failed!"
    echo "[!!!] write .gnome2/nautilus-scripts/$target"
    cat "gnome-terminal" >> $HOME/.gnome2/nautilus-scripts/$target
    chmod +x $target
    unset target
}

