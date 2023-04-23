#!/bin/bash

USERID=$(id -u)

VALIDATE(){
if [ $1 -ne 0 ]; then
	echo "$2 ... FAILURE"
	exit 1
else
	echo "$2 ... SUCCESS"
fi
}

if [ $USERID -ne 0 ]; then
	echo "You need to be root user to execute this script"
	exit 1
fi

apt update –y

VALIDATE $? "Updating APT"

ubuntu-linux-extras install openjdk-11-jdk -y

VALIDATE $? "Installing OpenJDK 11"

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

VALIDATE $? "Adding Jenkins Repo"

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

VALIDATE $? "Import Jenkin key"

apt upgrade -y

VALIDATE $? "Upgrade APT"

apt install jenkins -y

VALIDATE $? "Installing Jenkins"

systemctl enable jenkins

VALIDATE $? "Enable Jenkins"

systemctl start jenkins

VALIDATE $? "Starting Jenkins"