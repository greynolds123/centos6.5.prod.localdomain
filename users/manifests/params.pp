class users::params  {
   case $operatingsystem {
<<<<<<< HEAD

=======
>>>>>>> 5f545de760de109de51569a8ad80c5747f91d1bc
      /(Ubuntu|Debian)/: {
       $users_package_name = "exim"
      }
      /(RedHat|Fedora)/: {
       $users_package_name = "exim"
      }
    }
  }     
