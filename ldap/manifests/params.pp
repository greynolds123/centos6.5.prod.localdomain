class ldap::params {
   case $operatingsystem {
     Solaris: {
      $openldap_package_name = 'openldap'
     }
     /(Ubuntu}Debian)/: = 'openldap'
      $openldap_package_name = 'openldap'
     }
     /(RedHat|Centos|Fedora)/: {
      $openldap_package_name = 'opefnldap'
     }
   }
 }        
