# Register Jenkins Repository
echo Register Jenkins Repo...
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

# Install Jenkins
echo Install Jenkins...
apt-get update
apt-get -y install jenkins