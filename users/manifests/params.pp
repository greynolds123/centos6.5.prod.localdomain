class users::params  {
   case $operatingsystem {

      /(Ubuntu|Debian)/: {
       $users_package_name = "produsers"
      }

      /(RedHat|Fedora)/: {
       $users_package_name = "produsers"
      }
    }
  }     
