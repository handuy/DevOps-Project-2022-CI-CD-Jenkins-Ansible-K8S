#!/bin/bash
sudo amazon-linux-extras install -y java-openjdk11
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz
tar -xvzf apache-tomcat-10.0.20.tar.gz
cd /home/ec2-user/apache-tomcat-10.0.20/bin
chmod +x startup.sh shutdown.sh
./startup.sh

