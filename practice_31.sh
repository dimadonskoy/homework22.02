#!/usr/bin/env bash
#######################################################################
#Developed by : Dmitri Donskoy
#Purpose : 31. Practice: groups (Homework)
#Date : 22.02.2025
#Version : 0.0.1
#set -x
#set -o errexit
#set -o nounset
#set -o pipefail
#######################################################################

## 1. Create the groups tennis, football and sports.
sudo groupadd tennis
sudo groupadd football
sudo groupadd sports

## 2. In one command, make venus a member of tennis and sports.
sudo usermod -a -G tennis sports venus

## 3. Rename the football group to foot.
sudo groupmod -n foot football

## 4. Use vi to add serena to the tennis group.
sudo vim /etc/group

## 5. Use the id command to verify that serena is a member of tennis.
id

