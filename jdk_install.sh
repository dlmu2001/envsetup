#!/bin/sh

echo "install jdk7 and jdk8"

##install jdk7 and jdk8
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
sudo apt-get install oracle-java8-installer
##default to jdk8
sudo update-java-alternatives -s java-8-oracle
