# sonarqube setup on rhel8 machine.

step-01: run under "ec2-user" user  
curl https://raw.githubusercontent.com/balajipothula/docker/master/setup-docker-redhat.sh -o adduser-postgres.sh  
sudo ./adduser-postgres.sh  

step-02: sudo ./install-postgresql.sh (run under "postgres"  user)   
step-03: ./add-sonar-db-user.sh       (run under "postgres"  user)  
step-04: sudo ./adduser-sonarqube.sh  (run under "ec2-user"  user)    
step-05: ./install-sonarqube.sh       (run under "sonarqube" user)  
