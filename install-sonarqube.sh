#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 16 August 2019,
# Description : Installing sonar qube on rhel.

# updating rhel packages.
sudo yum -y update

# installing openjdk8 unzip.
sudo yum -y install java-1.8.0-openjdk-devel.x86_64 unzip

# downloading and running sonarqube.
curl -J -L https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-6.7.7.zip -o $HOME/sonarqube.zip && \
unzip -q $HOME/sonarqube.zip -d $HOME/                                                                        && \
rm -rf   $HOME/sonarqube.zip                                                                                  && \
mv       $HOME/sonarqube-* $HOME/sonarqube                                                                    && \
find     $HOME/sonarqube -name "COPYING" -type f -delete                                                      && \
find     $HOME/sonarqube -name "*.txt"   -type f -delete                                                      && \
rm -rf   $HOME/sonarqube/bin/{jsw-license,linux-x86-32,macosx*,windows*}

#  
curl -J -L http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm -o mysql.rpm && \
sudo rpm -i mysql.rpm

# installing mysql-server.
sudo yum -y install mysql-server

# starting mysql daemon.
sudo systemctl start mysqld

#
useradd sonarqube
passwd  sonarqube

unzip   $HOME/sonarqube.zip -C $HOME/
