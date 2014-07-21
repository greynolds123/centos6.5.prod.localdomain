class users::params  {
   case $operatingsystem {
      /(Ubuntu|Debian)/: {
       $users_package_name = "exim"
      }
      /(RedHat|Fedora|SLES)/: {
       $users_package_name = "exim"
      }
    }
  }     
