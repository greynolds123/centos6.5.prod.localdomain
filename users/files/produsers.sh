#!/bin/bash

<<<<<<< HEAD
produsers=~root/prodAddusers.txt

##################################################

# Script function

for a in $(gawk -F: '{print}' < "$produsers");

 do

 echo "$a"

 $(useradd "$a") && $(chage -d 0 "$a");

 done

      echo "Adding users is complete...."

exit 0
=======
produsers=/root/prodAddusers.txt


##################################################


# Script function


for a in $(gawk -F: '{print}' < "$produsers");

   do

   echo "$a"

$(/usr/sbin/useradd "$a") && $(/usr/sbin/useradd $HOME/$a  --password $password1) && $(/usr/bin/chage -d 0 "$p");
  
done
<<<<<<< HEAD
>>>>>>> 5f545de760de109de51569a8ad80c5747f91d1bc
=======
 
>>>>>>> 24b6f67e32e4d3f027bba3206d89f8114067fb80
