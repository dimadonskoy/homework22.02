#!/usr/bin/env bash
#######################################################################
#Developed by : Dmitri Donskoy
#Purpose : 35. Practice: links (Homework)
#Date : 22.02.2025
#Version : 0.0.1
#set -x
#set -o errexit
#set -o nounset
#set -o pipefail
#######################################################################


## 1. Create two files named winter.txt and summer.txt, put some text in them.
echo blabla > winter.txt ; echo blabla1 > summer.txt

## 2. Create a hard link to winter.txt named hlwinter.txt.
ln winter.txt hlwinter.txt

## 3. Display the inode numbers of these three files, the hard links should have the same inode.
ls -li winter.txt summer.txt hlwinter.txt

## 4. Use the find command to list the two hardlinked files
find . -inum 4609 

## 6. Create a symbolic link to summer.txt called slsummer.txt.
ln -s summer.txt slsummer.txt

## 8. Look at the directories /etc/init.d/ /etc/rc.d/ /etc/rc3.d/ ... do you see the links ?
ls -l /etc/init.d
ls -l /etc/rc2.d
ls -l /etc/rc3.d
## many links to system services

## 9. Look in /lib with ls -l...
ls -l /lib
#lrwxrwxrwx 1 root root 7 Apr 22  2024 /lib -> usr/lib

## 10. Use find to look in your home directo
find ~ ! -links 1 -type f

#/home/vagrant/permissions/winter.txt
#/home/vagrant/permissions/hlwinter.txt
