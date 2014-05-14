class deploy-cobbler::params {
      case $operatingsystem {
      Solaris: {
      $deploy-cobbler_package_name = "cobbler"
      }
      /(Ubuntu|Debian)/: {
      $deploy-cobbler_package_name = "cobbler"
      }
      /(RedHat|Fedora)/: {
      $deploy-cobbler_package_name = "cobbler"
      }
     }
    }

