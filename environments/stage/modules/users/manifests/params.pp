class users::params  {
   case $operatingsystem {
      Solaris: {
       $users_package_name = "stageusers"
      }

      /(Ubuntu|Debian)/: {
       $users_package_name = "stageusers"
      }

      /(RedHat|Fedora)/: {
       $users_package_name = "stageusers"
      }
    }
  }     
