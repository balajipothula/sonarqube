#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 16 August 2019,
# Description : Installing sonar qube on rhel.

# updating rhel packages.
sudo yum -y update

curl -J -L http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm -o mysql.rpm
sudo rpm -i mysql.rpm

# installing openjdk8.
sudo yum -y install unzip java-1.8.0-openjdk mysql-server


curl -J -L https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.0.zip -o $HOME/sonarqube.zip && \
unzip   $HOME/sonarqube.zip -C $HOME/
