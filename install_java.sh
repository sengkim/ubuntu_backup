#!/bin/bash

default_dst_path=/opt/java

src_path="${1:-$PWD}"
dst_path="${2:-$default_dst_path}"

JAVA_VERSION="jdk1.6.0_24"

[[ -d $src_path/$JAVA_VERSION ]] || { echo "Error: Do not find '$JAVA_VERSION' in '$src_path'"; exit 99; }

sudo mkdir $dst_path -p
sudo mv $src_path/$JAVA_VERSION $dst_path

sudo sed '$a\PATH=\$PATH:'"${dst_path}/$JAVA_VERSION"'/bin\nCLASSPATH=.:'"${dst_path}/$JAVA_VERSION"'/lib\nJAVA_HOME='"${dst_path}/$JAVA_VERSION"'' /etc/environment -i

. /etc/environment

sudo update-alternatives --install /usr/bin/java java ${dst_path}/$JAVA_VERSION/bin/java 300
sudo update-alternatives --install /usr/bin/javac javac ${dst_path}/$JAVA_VERSION/bin/javac 300
update-alternatives --config java

