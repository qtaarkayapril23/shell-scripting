Contents
--------

What is Scripting and How is it different from progrmming?
----------------------------------------------------------

* Every scripting language is a Programming Language, The one theoritical defference is programming languages are compile and then executed where as scripting languages don't have extra compilation step.


Live Example
------------

* We have written two scripts
* Shell Script
```shell
#!/bin/bash
tempfile="/tmp/available.$$"
trap "rm -f $tempfile" EXIT

cat << 'EOF' > $tempfile    
    { sum += $4 }
END {
    mb = sun/1024
    gb = mb/1024
    printf "%.of MB (%GB) of available diskspace\n", gb
}
EOF

df -k | awk -f $tempfile
exit 0
```


* Python script

```python
#!/usr/bin/env python3

import shutil

path = "/"

total, used, free = shutil.disk_usage(path)

print("Total: %d GiB", (total //(2**30)))
print("used: %d GiB", (used //(2**30)))
print("free: %d GiB", (free //(2**30)))
```


Approach - Part 1
-----------------

* Any script is a set of instructions executed line by line
* To become effective understanding flow of the program/script is essential

### Lets write a script to install docker
* Create a script (`installdocker.sh`) with following content 
```bash
#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
```
* Now give execute permissions and run the script `<path/>installdocker.sh`

### Exercise

* Write a shell script 
    * to install jenkins with java 11 
    * to install jenkins with java 17 
    * to install kubernetes (using kubeadm) `skip init`
* Note: all the scripts will be run as a root user

### Workout for Exercise
* [Refer Here]