class sudo::parms {
    case $operatingsystem {
      Solaris: {
       $sudo_package_name = 'sudo'
      }

      /(Ubuntu| Debian)/: {
       $sudo_package_name = 'sudo'
      }

      /(Redhat|Fedora)/: {
       $sudo_package_name = 'sudo'
     }
   }
 }
