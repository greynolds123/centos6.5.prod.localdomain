class deploy-cobbler::params {
      case $operatingsystem {
<<<<<<< HEAD
      Solaris: {
      $cobbler_package_name = "cobbler"
      }
=======
>>>>>>> de97c461b67f2d44779eaf61d0a3a1b8ff2a9e0f
      /(Ubuntu|Debian)/: {
      $cobbler_package_name = "cobbler"
      }
      /(RedHat|Fedora)/: {
      $cobbler_package_name = "cobbler"
      }
     }
    }

