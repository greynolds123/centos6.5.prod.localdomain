class users::params  {
   case $operatingsystem {
      Solaris: {
       $users_package_name = "devusers"
      }

      /(Ubuntu|Debian)/: {
       $users_package_name = "devusers"
      }

      /(RedHat|Fedora)/: {
       $users_package_name = "devusers"
      }
    }
  }     
