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

$(useradd "$a") && $(chage -d 0 "$a");
  
   $(useradd "$a") && $(chage -d 0 "$a");

done
>>>>>>> 5f545de760de109de51569a8ad80c5747f91d1bc
