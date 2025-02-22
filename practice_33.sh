#!/usr/bin/env bash
#######################################################################
#Developed by : Dmitri Donskoy
#Purpose : 33. Practice: standard file advanced file permissions (Homework)
#Date : 22.02.2025
#Version : 0.0.1
#set -x
#set -o errexit
#set -o nounset
#set -o pipefail
#######################################################################


## 1a. Set up a directory, owned by the group sports.
sudo groupadd sports
mkdir ~/sports
chown root:sports ~/sports

## 1b. Members of the sports group should be able to create files in this directory.
chmod 770 ~/sports

## 1c. All files created in this directory should be group-owned by the sports group.
chmod root:sports ~/sports/*

## 1d. Users should be able to delete only their own user-owned files.
chmod +t ~/sports

