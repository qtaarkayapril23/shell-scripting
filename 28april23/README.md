Scripting Types
---------------
* We create scripts for two major usecases
    * A person executing it
    * Automated execution (should not ask for user interaction)
* For DevOps/Cloud related activities we need automated execution

More on Scripting
-----------------

* According to last classes, we have to script to install jenkins
* [Refer Here](https://github.com/qtaarkayapril23/shell-scripting/blob/main/28april23/install-jenkins-java11.sh) for the script to install jenkins with java 11.
```
sudo vi installjenkins.sh
sudo sh installjenkins.sh
```
![Preview](Images/ss2.png)
![Preview](Images/ss3.png)

* Lets try to look at this script in a different way by drawing a flow chart
![Preview](Images/ss1.png)

* Lets try to draw a flow chart which will install jenkins on ubuntu and redhat systems
![Preview](Images/ss4.png)

* Below is the script to install jenkins on redhat as well as ubuntu systems
* 

### Expression
* An expression is combination of operands and operators which return some value

### Operators in bash


### Conditional statements
* We have 4 conditional statements
    * if
    * if else
    * if elif else
    * switch
* Conditional statements require boolean operators

### References cheatsheet
* [Refer Here](https://devhints.io/bash) for the cheatsheet of bash

* Style Guide:
    * Shell:
    * Python:
### Installation

### Exercise
* Write a shell script to do the following
    * If the os is redhat 
        * install jenkins with jdk 11
        * install awscli
        * install azure cli
    * If the os is ubuntu
        * install awscli
        * install azurecli

### Workout for the Exercise

*  