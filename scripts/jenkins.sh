#!/bin/bash
sudo hostnamectl set-hostname jenkins
sudo hostname jenkins

sudo apt update -y
sudo apt install -y wget gnupg openjdk-17-jdk

sudo mkdir -p /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/" \
| sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update -y
sudo apt install -y jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
