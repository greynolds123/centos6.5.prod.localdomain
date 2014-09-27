class deploy-cobbler::params {
      case $operatingsystem {
      Solaris: {
      $cobbler_package_name = 'cobbler'
      }
      /(Ubuntu|Debian)/: {
      $cobbler_package_name = 'cobbler'
      }
      /(RedHat|Fedora)/: {
      $cobbler_package_name = 'cobbler'
      }
     }
    }

