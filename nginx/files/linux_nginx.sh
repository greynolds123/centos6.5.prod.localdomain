  #!/bin/bashnxPath
        
 rt="/root"
 servers="/root/servers.txt"
 nginxTemp="/tmp"
 now="$(date +"%m_%d_%Y")"
 remotecwd1="/usr/bin/sudo"
 remotecwd2="/bin/cat"
 remotecwd3="/bin/echo"
 remotecwd4="/bin/rpm -ivh"
 remotecwd5="/usr/bin/sudo"
 remotecwd6="/bin/cat"
 Pkdir="/etc/pki/tls/certs/"
 privatedir="/etc/pki/tls/private"
 input="in"
 nginxPath="/etc/nginx/conf.d/default.conf"
 nginxSSLpath="/etc/nginx/conf.d/ssl.conf"
 defaultNiginx="/etc/nginx/"
 nginxVirtpath="/etc/nginx/conf.d/virtual.conf"
 rootdoc="/usr/share/nginx/html/index.html"
 parentrootdir="/usr/share/nginx"
 nginxlog="/usr/share/nginx/logs"
 
##############################

# Script Function

###################
#                 #
# Download repo's #
#                 #
###################

     read -p "Which OS to add the nginx repo?(Ex: centos, redhat, fedora) " AR

           case $AR in

     centos ) read -p "Want to download the centos repo for nginx over the internet? [y/n] " dlcentrepo

          if [ $dlcentrepo = y ]; then

            $remotecwd5 rpm -ivh http://mirror.yandex.ru/epel/6/x86_64/epel-release-6-8.noarch.rpm

              else

          if [ $dlcentrepo = n ]; then

              echo "centos download ignore"

    fi
     fi;

        continue;;

     redhat ) read -p "Want to download the redhat repo for nginx  over the internet? [y/n] " dlrhnrepo

         if [ $dlrhnrepo = y ]; then

         $remotecwd5 rpm -ivh  http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-rhel-6-0.el6.ngx.noarch.rpm
          
               else

         if [ $dlrhnrepo = n ]; then

            echo "redhat download ignored"

   fi
    fi;

       continue;;

    fedora )  read -p "Want to download the fedora repo for ngix over the internet? [y/n] " $dlfedrepo

        if [ $dlfedrepo = y ]; then

         $remotecwd5 rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm   

             else

       if [ $dlfedrepo = n ]; then

          echo "fedora download ignored"
   fi
    fi;

      continue;;


   !) echo "This is not an OS choice?"
    echo "ubuntu, debian, centos, redhat, fedora";

     continue;;

            esac

       if [ $AR = n ]; then

        !$AR

   fi


##############################
#                            #
# Clearing the system cache  #
#                            #
##############################



   read -p "clear cache? [y/n] " cc

      if [ $cc = y ]; then
  
        $remotecwd5  sync; echo 3 > /proc/sys/vm/drop_caches

      if [ $cc = n ]; then

        !$cc

   fi
    fi


###############
#             #
# yum install #
#             #
###############


   read -p "Install nginx? [y/n] " INST

      if [ $INST = y ]; then

        $remotecwd5 yum install nginx-*

              else

      if [ $INST = n ]; then

        !$INST

   fi
    fi

   read -p "Continue? [y/n] " co

      if [ $co = y ]; then

##########################
#                        #
# Genreate the ssl keys  #
#                        #
##########################

   read -p "Generate the ssl key for this server? [y/n] " GK


      if [ $GK = y ]; then


   read -p "What is the encryption type?(type: des3) " et

   read -p "What is the size of the key size?(type: 2048) " ks

   read -p "What is the fqdn of this host? " vm

      cd $Pkdir && openssl  genrsa -$et -out $vm.key $ks

             sleep 6

      cd $Pkdir && openssl  genrsa -$et -out $vm.pem $ks

             sleep 6

      cd $Pkdir && openssl  genrsa -$et -out $vm.crt $ks

             sleep 10

   read -p "Create the csr? [y/n] " PK

      if [ $PK = y ]; then

      cd  $Pkdir && openssl req -nodes -new -keyout $vm.pem -out $vm.csr

             sleep 6

      cd $Pkdir && openssl x509 -req -days 3650 -$input $vm.csr -signkey $vm.key  -out $vm.pem

             sleep 4

##############################################################################
#                                                                            #
# copy the private key to /private and clear the system cache a second time  #
#                                                                            #
##############################################################################

      cd $Pkdir && cp $vm.key ../private/

       $remotecwd5  sync; echo 3 > /proc/sys/vm/drop_caches

      if [ $GK = n ]; then

      !$GK

   fi

     if [ $PK = n ]; then

       !$PK

   fi

    if [ $co = n ]; then

      !$co

   fi
    fi
     fi
      fi

##########################
#                        #
# Configure default.conf #
#                        #
##########################


  read -p "Configure nginx's default.conf? [y/n] " ndc

     if [ $ndc = y ]; then

       $remotecwd5 vi  $nginxPath

           else

     if [ $ndc = n ]; then

       !$ndc
   fi
    fi

######################
#                    #
# Configure ssl.conf #
#                    #
######################


   read -p "Configure nginx ssl.conf? [y/n] "  nxssl

     if [ $nxssl = y ]; then

       $remotecwd5 vi $nginxSSLpath


##########################
#                        #
# Configure virtual.conf #
#                        #
##########################



   read -p "Configure nginx virtual.conf? [y/n] "  nxvirt

     if [ $nxvirt = y ]; then

       $remotecwd5 vi $nginxVirtpath
   fi

############################################################################
#                                                                          #
# Backup the default html, date stamp it and add content to a new root doc #
#                                                                          #
############################################################################

   read -p "Do you want to add content to the root document? [y/n] " ac

     if [ $ac = y ]; then

       $remotecwd5 cp $rootdoc $nginxTemp/index_$now.html
       
       $remotecwd5 vi  $rootdoc

     if [ $ac = n ]; then

      !$ac

  fi
   fi

      sleep 3      

########################################
#                                      #
# Set file permission for the root doc #
#                                      #
########################################

 read -p "Set the file permission for root directory? [y/n] " sfp

       if [ $sfp = y ]; then

        mkdir $nginxlog

        chown -R nginx:root $parentrootdir

       if [ $sfp = n ]; then

         !$sfp

     fi
      fi
             sleep 2


######################################################################
#                                                                    #
# Starts the nginx server and checks for the running ports. Turns on #
# automatic start upon reboot.                                       #
#                                                                    #
######################################################################


  read -p "Start the nginx server? [y/n] " startnx

    if [ $startnx = y ]; then

      $remotecwd5  service nginx start

         sleep 6

      $remotecwd5 netstat -antpl | grep nginx

        sleep 4

      $remotecwd5 chkconfig --level 035 nginx on

        sleep 3

      $remotecwd5 chkconfig --list|grep nginx

   if [ $startnx = n ]; then

     !$startnx

  fi
   fi

########################################
#                                      #
# A test for the url access using curl #
#                                      #
########################################

  read -p "Test the url? [y/n] " TU
  read -p "To connect are using https or http? " CP
  read -p "What is the port number you will use to test? " PN
 
  if [ $TU = y ]; then

     curl -I $CP://$vm:$PN --insecure

   if [ $TU = n ]; then

     !$TU

  fi
   fi
    fi
     
