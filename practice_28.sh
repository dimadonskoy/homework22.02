#!/usr/bin/env bash
#######################################################################
#Developed by : Dmitri Donskoy
#Purpose : 28 Practice: users management (Homework)
#Date : 22.02.2025
#Version : 0.0.1
#set -x
#set -o errexit
#set -o nounset
#set -o pipefail
#######################################################################

## 1. Create a user account named serena, including a home directory and a description  that reads Serena Williams.
sudo useradd -m -c 'Serena Williams' serena

## 2. Create a user named venus, including home directory, bash shell, a description that reads
Venus Williams
sudo useradd -m -c "Venus Williams" -s /bin/bash venus

## 3. Verify that both users have correct entries in /etc/passwd, /etc/shadow and /etc/group.
sudo at /etc/passwd | grep -e 'serena|venus'
sudo cat /etc/shadow | grep -e 'serena|venus'
sudo cat /etc/group | grep -e 'serena|venus'

## 4. Verify that their home directory was created.
ls -l /home | grep -E 'serena|venus'

## 5. Create a user named einstime with /bin/date as his default logon shell.
sudo useradd -s /bin/date einstime

## 7. Change user to einstime
su - einstime

## 8. Create a file named welcome.txt and make sure every new user will see this file in their
home directory.
sudo echo Hello > /etc/skel/welcome.txt ## not works
sudo -i
echo Hello > /etc/skel/welcome.txt  ## works only from root

## 9. Verify this setup by creating (and deleting) a test user account.
sudo useradd -m test
sudo ls -l /home/test
sudo userdel test

## 10. Change the default login shell for the serena user to /bin/bash. Verify before and after
you make this change.
sudo usermod -s /bin/bash serena



