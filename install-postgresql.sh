#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 16 August 2019,
# Description : Installing sonar qube on rhel.

# Note        : Please run this file with root privilages.

# updating rhel packages.
yum -y update

# installing postgresql repository.
dnf -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm

# installing postgresql on rhel8.
yum -y install @postgresql:9.6

# initializing postgresql db cluster.
postgresql-setup --initdb

# starting postgresql.
systemctl start postgresql

# starting postgresql at boot time.
systemctl enable postgresql

# chaging pgsql directory owner to postgres.
chown -R postgres:postgres /var/lib/pgsql && sudo chmod -R u=rwX,go= /var/lib/pgsql

# creating new user
createuser sonar

# executing sonar sql file.
psql -h 127.0.0.1 -p 5432 -U sonar -d sonar -a -q -f /home/postgres/sonar.sql





