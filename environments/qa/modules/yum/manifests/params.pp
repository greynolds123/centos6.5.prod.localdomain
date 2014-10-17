class ssh::params {
   case operatingsystem {
    Solaris: {
     $yum_package_name = 'yum'
      }
    /(Ubuntu|Debian)/: {
     $yum_pachake_name = 'yum'
      }
    /(RedHat|Fedora)/: {
     $yum_package_name = 'yum'
      }
    }
  }
