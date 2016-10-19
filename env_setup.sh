#!/bin/sh
echo "setup github"
./github_setup.sh
echo "install jdk7 and jdk8"
./jdk_install.sh
echo "setup android build env"
./android_build_setup_1404.sh
