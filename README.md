# sonarqube setup on rhel8 machine.

step-01: run under "ec2-user" user  
curl https://raw.githubusercontent.com/balajipothula/docker/master/setup-docker-redhat.sh -o adduser-postgres.sh  
chmod +x adduser-postgres.sh  
sudo ./adduser-postgres.sh  

step-02: run under "postgres" user  
curl https://raw.githubusercontent.com/balajipothula/docker/master/setup-docker-redhat.sh -o install-postgresql.sh  
chmod +x install-postgresql.sh  
sudo ./install-postgresql.sh  

step-03: run under "postgres" user  
curl https://raw.githubusercontent.com/balajipothula/docker/master/setup-docker-redhat.sh -o add-sonar-db-user.sh  
chmod +x add-sonar-db-user.sh  
sudo ./add-sonar-db-user.sh  

step-04: run under "ec2-user" user  
curl https://raw.githubusercontent.com/balajipothula/docker/master/setup-docker-redhat.sh -o adduser-sonarqube.sh  
chmod +x adduser-sonarqube.sh  
sudo ./adduser-sonarqube.sh  

step-05: run under "sonarqube"user  
curl https://raw.githubusercontent.com/balajipothula/docker/master/setup-docker-redhat.sh -o install-sonarqube.sh  
chmod +x install-sonarqube.sh  
sudo ./install-sonarqube.sh  
