# sonarqube setup on rhel8 machine.

step-00: sudo hostnamectl set-hostname sonarqube

step-01: ./install-lua.sh  
step-02: ./install-luarocks.sh  
step-03: sudo ./install-mssql-tools.sh  
