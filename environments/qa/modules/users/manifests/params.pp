class users::params  {
   case $operatingsystem {
      Solaris: {
       $users_package_name = "qausers"
      }

      /(Ubuntu|Debian)/: {
       $users_package_name = "qausers"
      }

      /(RedHat|Fedora)/: {
       $users_package_name = "qausers"
      }
    }
  }     
