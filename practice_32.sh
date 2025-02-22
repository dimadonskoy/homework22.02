#!/usr/bin/env bash
#######################################################################
#Developed by : Dmitri Donskoy
#Purpose : 32. Practice: standard file permissions (Homework)
#Date : 22.02.2025
#Version : 0.0.1
#set -x
#set -o errexit
#set -o nounset
#set -o pipefail
#######################################################################

## 1. As normal user, create a directory ~/permissions. Create a file owned by yourself in there.
mkdir ~/permissions
touch ~/permissions/test_perm.txt

## 2. Copy a file owned by root from /etc/ to your permissions dir, who owns this file now ?
cp /etc/hosts ~/permissions/
#Owned by me

## 3. As root, create a file in the users ~/permissions directory.
sudo touch home/dima/permissions/test_perm1.txt

## 4. As normal user, look at who owns this file created by root.
ls -l ~/permissions ## root

## 5. Change the ownership of all files in ~/permissions to yourself.
chown dima:dima ~/permissions/*
## cant change root ownership

## 6. Make sure you have all rights to these files, and others can only read.
chmod 644 *.txt
chmod 755 ~/permissions

## 11a. Display the umask in octal and in symbolic form.
umask 
umask -S

## 13a. Create a file as normal user, give only read to others. Can another normal user read this
touch test.txt
chmod 744 test.txt
## others can ionly read this file .

##13b. Can root read this file ? Can root write to this file with vi ?
Yes

## 14. Create a directory that belongs to a group, where every member of that group can read
and write to files, and create files. Make sure that people can only delete their own files.
mkdir ~/testgroup 
groupadd testgroup
chgrp testgroup ~/testgroup
chmod 775 ~/testgroup
