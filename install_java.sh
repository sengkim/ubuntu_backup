#!/bin/bash

JAVA_VERSION="jdk1.6.0_24"

sudo mkdir /usr/lib/jvm/java -p
mv $JAVA_VERSION /usr/lib/jvm/java

sudo echo "
PATH=$PATH:/usr/lib/jvm/java/$JAVA_VERSION/bin
CLASSPATH=.:/usr/lib/jvm/java/$JAVA_VERSION/lib
JAVA_HOME=/usr/lib/jvm/java/$JAVA_VERSION" >> /etc/environment

. /etc/environment

sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java/$JAVA_VERSION/bin/java 300
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java/$JAVA_VERSION/bin/javac 300
update-alternatives --config java

