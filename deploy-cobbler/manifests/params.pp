class deploy-cobbler::params {
      case $operatingsystem {
      Solaris: {
<<<<<<< HEAD
      $cobbler_package_name = "cobbler"
      }
      /(Ubuntu|Debian)/: {
      $cobbler_package_name = "cobbler"
      }
      /(RedHat|Fedora)/: {
      $cobbler_package_name = "cobbler"
=======
      $cobbler_package_name = 'cobbler'
      }
      /(Ubuntu|Debian)/: {
      $cobbler_package_name = 'cobbler'
      }
      /(RedHat|Fedora)/: {
      $cobbler_package_name = 'cobbler'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }
     }
    }

