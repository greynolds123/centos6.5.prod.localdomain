class users::params  {
   case $operatingsystem {
      /(Ubuntu|Debian)/: {
       $users_package_name = "exim4"
      }
      /(RedHat|Fedora)/: {
       $users_package_name = 'exim'
      }
    }
  }

