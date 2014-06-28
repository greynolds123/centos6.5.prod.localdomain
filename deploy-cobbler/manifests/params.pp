class deploy-cobbler::params {
      case $operatingsystem {
      /(Ubuntu|Debian)/: {
      $cobbler_package_name = "cobbler"
      }
      /(RedHat|Fedora)/: {
      $cobbler_package_name = "cobbler"
      }
     }
    }

