class deploy-cobbler::params {
      case $operatingsystems {
      Solaris: {
      $deploy-cobbler_package_name = "cobbler"
      }
      /(Ubuntu|Debian)/: {
      $deploy-cobbler_package_name = "cobbler"
      }
      /(Ubuntu|Debian)/: {
      $deploy-cobbler_package_name = "cobbler"
      }
     }
    }
