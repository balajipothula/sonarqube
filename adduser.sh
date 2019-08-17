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

# copying existing .ssh folder to new user.
cp -R /home/ec2-user/.ssh /home/sonarqube

# changing owner to .ssh directory.
chown -R sonarqube:sonarqube /home/sonarqube/.ssh

# switching usesr.
su - sonarqube
