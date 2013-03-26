class users::params  {
   case $operatingsystem {
      Solaris: {
       $users_package_name = "produsers"
      }

      /(Ubuntu|Debian)/: {
       $users_package_name = "produsers"
      }

      /(RedHat|Fedora)/: {
       $users_package_name = "produsers"
      }
    }
  }     
