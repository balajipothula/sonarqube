#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 18 August 2019,
# Description : Adding jenkins user to postgresql db server.

# exits any line in the bash script fails.
set -e

# creating new user.
psql -c "CREATE USER jenkins WITH PASSWORD 'jenkins123';"

# creating database owned by sonar.
psql -c "CREATE DATABASE jenkins OWNER jenkins;"

# switching to ec2-user usesr.
sudo su - ec2-user
