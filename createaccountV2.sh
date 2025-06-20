#!/bin/bash

read -p "Enter a new username: " user
read -p "Enter a password for the user: " pwrd
read -p "Enter the group to assign this user to: " group

useradd -m -s /bin/bash "$user"
echo "$user:$pwrd" | chpasswd
groupadd "$group"
gpasswd -a "$user" "$group"