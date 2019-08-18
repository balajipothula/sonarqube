# sonarqube setup on rhel8 machine.

step-00: sudo hostnamectl set-hostname sonarqube  

step-01: sudo ./adduser-postgres.sh   (run under "ec2-user"  user)  
step-02: sudo ./install-postgresql.sh (run under "postgres"  user)   
step-03: ./add-sonar-db-user.sh       (run under "postgres"  user)  
step-04: sudo ./adduser-sonarqube.sh  (run under "ec2-user"  user)    
step-05: ./install-sonarqube.sh       (run under "sonarqube" user)  
