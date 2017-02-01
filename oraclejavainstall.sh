#!/bin/bash

#JAVA_HOME=/opt/gatterer/jdk1.8.0_121/
#update-alternatives --install /usr/bin/java java ${JAVA_HOME%*/}/bin/java 20000
#update-alternatives --install /usr/bin/javac javac ${JAVA_HOME%*/}/bin/javac 20000

#sudo apt-get install libxtst6:i386
#sudo apt-get install libgtk-3-dev


#Quelle https://wiki.ubuntuusers.de/Java/Installation/Oracle_Java/Java_8/#Java-8-JDK

sudo update-alternatives --install "/usr/bin/java" "java" "/opt/gatterer/jdk1.8.0_121/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/opt/gatterer/jdk1.8.0_121/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/opt/gatterer/jdk1.8.0_121/bin/javaws" 1
sudo update-alternatives --install "/usr/bin/jar" "jar" "/opt/gatterer/jdk1.8.0_121/bin/jar" 1 

sudo update-alternatives --set "java" "/opt/gatterer/jdk1.8.0_121/bin/java"
sudo update-alternatives --set "javac" "/opt/gatterer/jdk1.8.0_121/bin/javac"
sudo update-alternatives --set "javaws" "/opt/gatterer/jdk1.8.0_121/bin/javaws"
sudo update-alternatives --set "jar" "/opt/gatterer/jdk1.8.0_121/bin/jar" 



