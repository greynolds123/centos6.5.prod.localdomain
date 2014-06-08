#!/bin/bash

produsers=/root/prodAddusers.txt


##################################################


# Script function


for a in $(gawk -F: '{print}' < "$produsers");

   do

   echo "$a"

$(/usr/sbin/useradd "$a") && $(/usr/sbin/useradd $HOME/$a  --password $password1) && $(/usr/bin/chage -d 0 "$p");
  
done
 
