#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 16 August 2019,
# Description : Installing sonar qube on rhel8.

# Note        : Please run this file with root privilages.

# updating rhel packages.
yum -y update

# installing postgresql repository.
dnf -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm

# installing postgresql on rhel8.
yum -y install @postgresql:9.6

# initializing postgresql db cluster.
postgresql-setup --initdb

# changing methods peer -> trust and ident -> md5
sed -i 's/peer/trust/g' /var/lib/pgsql/data/pg_hba.conf
sed -i 's/ident/md5/g'  /var/lib/pgsql/data/pg_hba.conf

# chaging pgsql directory owner to postgres.
chown -R postgres:postgres /var/lib/pgsql && chmod -R u=rwX,go= /var/lib/pgsql

# starting postgresql.
systemctl start postgresql

# starting postgresql at boot time.
systemctl enable postgresql

# creating new user.
psql -c "CREATE USER sonar WITH PASSWORD 'sonar123';"
psql -c "CREATE DATABASE sonar OWNER sonar;"
