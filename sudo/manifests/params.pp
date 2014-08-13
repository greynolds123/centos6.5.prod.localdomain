class sudo::params {
    case $operatingsystem {
      /(Ubuntu| Debian)/: {
       $sudo_package_name = 'sudo'
      }

      /(Redhat|Fedora|SLES)/: {
       $sudo_package_name = 'sudo'
     }
   }
 }
