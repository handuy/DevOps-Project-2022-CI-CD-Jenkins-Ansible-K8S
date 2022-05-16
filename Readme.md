## Setup tomcat on EC2
Ref: https://devops4solutions.com/installation-of-tomcat-on-aws-ec2-linux-integration-with-jenkins/

edit file /home/ec2-user/apache-tomcat-10.0.20/webapps/host-manager/META-INF/context.xml
edit file /home/ec2-user/apache-tomcat-10.0.20/webapps/manager/META-INF/context.xml

edit file /home/ec2-user/apache-tomcat-10.0.20/conf/tomcat-users.xml
```xml
<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<user username="admin" password="admin" roles="manager-gui,manager-script"/>
```

## Setup Jenkins slave node on EC2

```bash
sudo useradd -m jenkins
echo "jenkins:jenkins" | sudo chpasswd
sudo sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
sudo sed -i "s/#PubkeyAuthentication yes/PubkeyAuthentication yes/g" /etc/ssh/sshd_config
sudo systemctl restart sshd
```