#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 16 August 2019,
# Description : Adding sonarqube user on rhel.

# Note        : Please run this file with root privilages.

# exits any line in the bash script fails.
set -e

# adding new user account.
adduser -m -c "SonarQube" sonarqube

# deleting user password access.
passwd -d sonarqube

# adding new user to sudoers.
chmod +w /etc/sudoers                                                && \
echo "sonarqube       ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers && \
chmod -w /etc/sudoers

# copying existing .ssh folder to new user.
cp -R /home/ec2-user/.ssh /home/sonarqube

# changing owner to .ssh directory.
chown -R sonarqube:sonarqube /home/sonarqube/.ssh

# switching to new usesr.
su - sonarqube
