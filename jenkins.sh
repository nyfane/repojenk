#!/bin/bash
#Description:-------Jenkins Installation on Centos7
#Author: Fanny, Feb-02 2022
echo " "
echo "Jenkins installation in progress"
sleel 2
#Install Java
echo "Installation of Java"
echo
 sudo yum install java-1.8.0-openjdk-devel
 #Enable the Jenkins repository
 echo "Enable the jenkins repository"
 sleep 2
 sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
 echo " "
sudo yum install wget -y
echo " "
sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo
#Install the lastest stable version of jenkins
sleep 2
echo "installation of the stable version of jenkins"
sudo yum install jenkins
sleep 2
sudo systemctl start jenkins 
sleep 2
sudo systemctl status jenkins
sleep 2
sudo systemctl enable jenkins
sleep2
echo " "
#Adjust the firewall
echo "adjust the firewall"
echo " "
 sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp 
 sleep 2
 sudo firewall-cmd --reload
 echo " "
 #Setting up Jenkins in the browser
 echo " "
 echo "Open the jenkins page from the browser"
 #http://your_ip_or_domain_8080 
 echo "end"


