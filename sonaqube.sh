#!/bin/bash
## sonaque install on Centos 7
## Please run this as user vagrant
user_name = "whoami"

If [$user_name != vagrant ];

then

echo "Must be run as user vagrant!!!"
exit 1
fi

 sudo -vagrant

  sudo yum update -y

  sudo yum install java-11-openjdk-devel -y

  sudo yum install java-11-openjdk -y

  cd /opt

  sudo yum install wget unzip -y

  sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

  sudo unzip /opt/sonarqube-9.3.0.51899.zip

  sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

  cd/opt/ sonarqube-9.3.0.51899/bin/linux-x86-64
 sudo firewall-cmd --permanent --add-port=9000/tcpcd

 sudo firewall-cmd --reload
 ./sonar.sh start

  echo “installation done successfully, get the ip and access your sonarque on the browser”