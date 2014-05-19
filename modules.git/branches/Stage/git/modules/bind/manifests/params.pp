class bind::params {
    case $operatingsystem {
      Solaris: {
        $bind_package_name = "named"
        }
       /(Ubuntu|Debian)/: {
        $bind_package_name = "named"
        }
       /(RedHat|Fedora)/: {
        $bind_package_name = "named"
        }
       }
      }
