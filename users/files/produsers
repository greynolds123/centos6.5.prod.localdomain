#!/bin/bash

produsers=/root/prodAddusers.txt


##################################################


# Script function


for a in $(gawk -F: '{print}' < "$produsers");

   do


   echo "$a"

$(useradd "$a") && $(chage -d 0 "$a");
  
   $(useradd "$a") && $(chage -d 0 "$a");

done
