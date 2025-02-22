#!/usr/bin/env bash
#######################################################################
#Developed by : Dmitri Donskoy
#Purpose : 27. Practice: introduction to users (Homework)
#Date : 22.02.2025
#Version : 0.0.1
#set -x
#set -o errexit
#set -o nounset
#set -o pipefail
#######################################################################

## 1.Dispaly currently logged on user
whoami

## 2.Dispaly list of all users
who

## 3.Display a list of all users including the command they are running
w

## 4.Dispay id
id

## 5. Use su to switch to another user account
su dima
exit

## 6. Now use su - to switch to another user and notice the difference
su - dima ## will enter to home directory of dima

## 7 + 8 Add user
useradd test ## permission denied
sudo useradd test






