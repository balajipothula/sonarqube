#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 18 August 2019,
# Description : Adding sonar user to postgresql db server.

# exits any line in the bash script fails.
set -e

# creating new user.
psql -c "CREATE USER sonarqube WITH PASSWORD 'sonarqube123';"

# creating database owned by sonar.
psql -c "CREATE DATABASE sonarqube OWNER sonarqube;"

# switching to ec2-user usesr.
sudo su - ec2-user
