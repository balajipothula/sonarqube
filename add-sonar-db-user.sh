#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 18 August 2019,
# Description : Adding sonar user to postgresql db server.

# creating new user.
psql -c "CREATE USER sonar WITH PASSWORD 'sonar123';"

# creating database owned by sonar.
psql -c "CREATE DATABASE sonar OWNER sonar;"

# switching to ec2-user usesr.
su - ec2-user
