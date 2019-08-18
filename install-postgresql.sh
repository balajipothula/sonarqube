#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 16 August 2019,
# Description : Installing sonar qube on rhel8.

# Note        : Please run this file with root privilages.

# updating rhel packages.
sudo yum -y update

# installing postgresql repository.
sudo dnf -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm

# installing postgresql on rhel8.
sudo yum -y install @postgresql:9.6

# initializing postgresql db cluster.
sudo postgresql-setup --initdb

# chaging pgsql directory owner to postgres.
sudo chown -R postgres:postgres /var/lib/pgsql && chmod -R u=rwX,go= /var/lib/pgsql

# changing methods peer -> trust and ident -> md5
sed -i 's/peer/trust/g' /var/lib/pgsql/data/pg_hba.conf
sed -i 's/ident/md5/g'  /var/lib/pgsql/data/pg_hba.conf

# starting postgresql.
sudo systemctl start postgresql

# starting postgresql at boot time.
sudo systemctl enable postgresql

# creating new user.
psql -c "CREATE USER sonar WITH PASSWORD 'sonar123';"
psql -c "CREATE DATABASE sonar OWNER sonar;"
