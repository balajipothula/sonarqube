# sonarqube setup on rhel8 machine.

step-01: run under "ec2-user" user  
curl -JOL https://raw.githubusercontent.com/balajipothula/sonarqube/master/adduser-postgres.sh  
chmod +x adduser-postgres.sh  
sudo ./adduser-postgres.sh  

step-02: run under "postgres" user  
curl -JOL https://raw.githubusercontent.com/balajipothula/sonarqube/master/install-postgresql.sh  
chmod +x install-postgresql.sh  
sudo ./install-postgresql.sh  

step-03: run under "postgres" user  
curl -JOL https://raw.githubusercontent.com/balajipothula/sonarqube/master/add-sonarqube-db-user.sh  
chmod +x add-sonarqube-db-user.sh  
./add-sonarqube-db-user.sh  

step-04: run under "ec2-user" user  
curl -JOL https://raw.githubusercontent.com/balajipothula/sonarqube/master/adduser-sonarqube.sh  
chmod +x adduser-sonarqube.sh  
sudo ./adduser-sonarqube.sh  

step-05: run under "sonarqube" user  
curl -JOL https://raw.githubusercontent.com/balajipothula/sonarqube/master/install-sonarqube-server.sh  
chmod +x install-sonarqube-server.sh  
./install-sonarqube-server.sh  
