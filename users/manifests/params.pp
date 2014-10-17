class users::params  {
   case $operatingsystem {
      /(Ubuntu|Debian)/: {
<<<<<<< HEAD
       $users_package_name = "exim"
      }
      /(RedHat|Fedora)/: {
       $users_package_name = "exim"
      }
    }
  }     
=======
       $users_package_name = 'exim'
      }
      /(RedHat|Fedora)/: {
       $users_package_name = 'exim'
      }
    }
  }
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
