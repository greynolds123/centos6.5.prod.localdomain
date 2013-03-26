class ldap::params {
   case $operatingsystem {
    Solaris: {
      $ntp_package_name = 'ntp'
     }
    /(RedHat|Fedora)/: {
      $ntp_package_name = 'ntp'
     }
   }
 }
