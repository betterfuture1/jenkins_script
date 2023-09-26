#!/bin/bash

## this csript helt create jenkins

sudo yum update -y

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum upgrade -y
sudo yum install docker -y
sudo service docker start 
sudo systemctl enable docker.service

sudo chmod 777  /var/run/docker.sock
sudo yum install git -y
yum install unzip -y
sudo yum install java-11* -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins

