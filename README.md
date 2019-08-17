# sonarqube

https://thegeeksalive.com/how-to-install-sonarqube-on-centos/


sudo sh -c 'echo -e "export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk" >> /etc/profile'


https://www.cyberciti.biz/faq/install-and-setup-postgresql-on-rhel-8/

useradd -c "SonarQube"  sonarqube  
useradd -c "PostgreSQL" postgres  



# switching to postgres user.
su - postgres

vi /var/lib/pgsql/data/pg_hba.conf
trust
md5

psql

SELECT pg_reload_conf();
