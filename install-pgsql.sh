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