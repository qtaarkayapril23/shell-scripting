#!/bin/bash
distribution=$(. /etc/os-release && echo $ID)
echo $distribution
# for ubuntu 
if  [[ $distribution == "rhel" ]]
then
    sudo yum install wget -y
    sudo wget -O /etc/yum.repos.d/jenkins.repo \
        https://pkg.jenkins.io/redhat-stable/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
    sudo yum upgrade -y
    # Add required dependencies for the jenkins package
    sudo yum install java-11-openjdk -y
    sudo yum install jenkins -y
    sudo systemctl daemon-reload
    java --version
    VALIDATE $? "This is for checking java version"
    jenkins --version
    VALIDATE $? "This is for checking jenkins version"
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install   
    aws --version
    VALIDATE $? "This is for checking awscli version in redhat"
    curl -sL https://azurecliprod.blob.core.windows.net/rhel7_6_install.sh | sudo bash
    az --version
    VALIDATE $? "This is for checking azurecli version in redhat"
elif [[ $distribution == "ubuntu" ]]
then
    sudo apt install unzip -y 
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    aws --version
    VALIDATE $? "This is for checking awscli version in ubuntu"
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
    az --version
    VALIDATE $? "This is for checking azurecli version in ubuntu"
else
    echo "This script runs only on redhat and ubuntu"
fi