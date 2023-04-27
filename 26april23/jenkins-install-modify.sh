#!/bin/bash

USERID=$(id -u)
DATE=$(date +%F)
LOG="jenkins-install-${DATE}.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
if [ $1 -ne 0 ]; then
	echo -e "$2 ... ${R} FAILURE ${N}" 2>&1 | tee -a $LOG
	exit 1
else
	echo -e "$2 ... ${G} SUCCESS ${N}" 2>&1 | tee -a $LOG
fi
}

if [ $USERID -ne 0 ]; then
	echo -e "${R} You need to be root user to execute this script ${N}"
	exit 1
fi

apt update &>>$LOG

VALIDATE $? "Updating APT"

apt install openjdk-11-jdk -y

VALIDATE $? "Installing OpenJDK 11"

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

VALIDATE $? "Adding Jenkins Repo"

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

VALIDATE $? "Import Jenkin key"

apt update

VALIDATE $? "Update APT"

apt install jenkins -y

VALIDATE $? "Installing Jenkins"

systemctl enable jenkins

VALIDATE $? "Enable Jenkins"

systemctl start jenkins

VALIDATE $? "Starting Jenkins"

# lsss &>>$LOG
# VALIDATE $? "creating error"

java --version

VALIDATE $? "Checking the version of javaJ"

jenkins --version

VALIDATE $? "Checking the version of jenkins"
