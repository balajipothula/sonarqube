
#  
curl -J -L http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm -o mysql.rpm && \
sudo rpm -i mysql.rpm

# installing mysql-server.
sudo yum -y install mysql-server

# starting mysql daemon.
sudo systemctl start mysqld
