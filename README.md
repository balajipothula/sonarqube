# sonarqube setup on rhel8 machine.

step-00: sudo hostnamectl set-hostname sonarqube  

step-01: sudo ./adduser-postgres.sh  
step-02: sudo ./install-postgresql.sh  
step-03: ./add-sonar-db-user.sh  
