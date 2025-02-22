#!/usr/bin/env bash
#######################################################################
#Developed by : Dmitri Donskoy
#Purpose : 27. Practice: user passwords (Homework)
#Date : 22.02.2025
#Version : 0.0.1
#set -x
#set -o errexit
#set -o nounset
#set -o pipefail
#######################################################################

## 1. Set the password for serena to hunter2.
passwd serena

## 2. Set a password for venus and then lock the venus user account with usermod. 
passwd venus
sudo usermod -L venus

## 3. Use passwd -d to disable the serena password.
passwd -d serena

## 4. Difference between locking a user account and disabling a user account's
password 
usermod -L ## locking user
passwd -d ## delete user password

## 6. Make sure serena has to change her password in 10 days.
chage -M 10 serena

## 8. Take a backup as root of /etc/shadow. Use vi to copy an encrypted hunter2 hash from
venus to serena. Can serena now log on with hunter2 as a password ?
Yes

## 10. Use chsh to list all shells (only works on RHEL/CentOS/Fedora), and compare to cat /
etc/shells.
cat /etc/shells ## works on ubuntu  ## chsh -l not works

## 11. Which useradd option allows you to name a home directory ?
-d

## 12. How can you see whether the password of user serena is locked or unlocked ? Give a
solution with grep and a solution with passwd.
cat /etc/shadow | grep serena


passwd -S serena



