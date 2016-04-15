apt-get update
apt-get install default-jre -y
cd /home/ubuntu
wget http://dl.bintray.com/rundeck/rundeck-deb/rundeck-2.6.4-1-GA.deb
dpkg -i rundeck-2.6.4-1-GA.deb
cd /etc/rundeck
PUBLIC_IP=`curl -s http://169.254.169.254/latest/meta-data/public-ipv4`
sed -i "s/localhost/$PUBLIC_IP/g" /etc/rundeck/rundeck-config.properties
sed -i "s/localhost/$PUBLIC_IP/g" /etc/rundeck/framework.properties
/etc/init.d/rundeckd start

