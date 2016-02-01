# Install JVM
echo Install JVM...
apt-get update
apt-get -y install openjdk-8-jre-headless

#echo artifactory soft nofile 32000 >> /etc/security/limits.conf
#echo artifactory hard nofile 32000 >> /etc/security/limits.conf

# Download Artifactory
echo Downloading Artifactory...
wget http://bit.ly/Hqv9aj -O jfrog-artifactory-oss-4.4.2.zip
unzip jfrog-artifactory-oss-4.4.2.zip
mv artifactory-oss-4.4.2 /opt/artifactory

# Clean
rm jfrog-artifactory-oss-4.4.2.zip

# Install Artifactory
echo Install Artifactory...
/opt/artifactory/bin/installService.sh

# Start Artifactory
echo Start Artifactory as Service...
service artifactory start