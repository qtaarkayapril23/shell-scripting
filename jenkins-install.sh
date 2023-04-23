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

wget -O /etc/apt.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

VALIDATE $? "Adding Jenkins Repo"

rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

VALIDATE $? "Import Jenkin key"

apt upgrade -y

VALIDATE $? "Upgrade YUM"

amazon-linux-extras install java-openjdk11 -y

VALIDATE $? "Installing OpenJDK 11"

apt install jenkins -y

VALIDATE $? "Installing Jenkins"

systemctl enable jenkins

VALIDATE $? "Enable Jenkins"

systemctl start jenkins

VALIDATE $? "Starting Jenkins"