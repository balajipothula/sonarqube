#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 16 August 2019,
# Description : Adding postgres user on rhel.

# Note        : Please run this file with sudo privilages.

# exits any line in the bash script fails.
set -e

# adding new user account.
adduser -m -c "PostgreSQL" postgres

# deleting user password access.
passwd -d postgres

# adding new user to sudoers.
chmod +w /etc/sudoers                                               && \
echo "postgres       ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers && \
chmod -w /etc/sudoers

# copying existing .ssh folder to new user.
cp -R /home/ec2-user/.ssh /home/postgres

# changing owner to .ssh directory.
chown -R postgres:postgres /home/postgres/.ssh

# switching to postgres usesr.
su - postgres
