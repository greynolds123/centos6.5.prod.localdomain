class users::params  {
   case $operatingsystem {
      Solaris: {
       $users_package_name = "mysqlusers"
      }

      /(Ubuntu|Debian)/: {
       $users_package_name = "mysqlusers"
      }

      /(RedHat|Fedora)/: {
       $users_package_name = "mysqlusers"
      }
    }
  }     
