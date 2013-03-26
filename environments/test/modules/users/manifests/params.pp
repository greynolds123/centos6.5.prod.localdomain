class users::params  {
   case $operatingsystem {
      Solaris: {
       $users_package_name = "testusers"
      }

      /(Ubuntu|Debian)/: {
       $users_package_name = "testusers"
      }

      /(RedHat|Fedora)/: {
       $users_package_name = "testusers"
      }
    }
  }     
