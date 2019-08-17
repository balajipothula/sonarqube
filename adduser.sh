
# adding new user account.
adduser -m -c "SonarQube" sonarqube

# deleting user password access.
passwd -d sonarqube

# copying existing .ssh folder to new user.
cp $HOME/.ssh /home/sonarqube

# changing owner to .ssh directory.
chown -R sonarqube:sonarqube /home/sonarqube/.ssh

# switching usesr.
su - sonarqube
