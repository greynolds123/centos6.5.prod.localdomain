class users::params  {
   case $operatingsystem {
      Solaris: {
       $users_package_name = "producers"
      }

      /(Ubuntu|Debian)/: {
       $users_package_name = "produusers"
      }

      /(RedHat|Fedora)/: {
       $users_package_name = "produsers"
      }
    }
  }     
