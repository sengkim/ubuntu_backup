#!/bin/bash

default_dst_path=/usr/lib/jvm/java

src_path="${1:-$PWD}"
dst_path="${2:-$default_dst_path}"

JAVA_VERSION="jdk1.6.0_24"

[[ -d $src_path/$JAVA_VERSION ]] || { echo "Error: Do not find '$JAVA_VERSION' in '$src_path'"; exit 99; }

sudo mkdir /usr/lib/jvm/java -p
sudo mv $src_path/$JAVA_VERSION /usr/lib/jvm/java

sudo sed '$a\
PATH='"$PATH"':/usr/lib/jvm/java/'"$JAVA_VERSION"'/bin\nCLASSPATH=.:/usr/lib/jvm/java/'"$JAVA_VERSION"'/lib\nJAVA_HOME=/usr/lib/jvm/java/'"$JAVA_VERSION"'
' /etc/environment -i

exit 0
. /etc/environment

sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java/$JAVA_VERSION/bin/java 300
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java/$JAVA_VERSION/bin/javac 300
update-alternatives --config java

