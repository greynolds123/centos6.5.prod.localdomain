class ssh::params {
   case operatingsystem {
    Solaris: {
     $yum_package_name = "yum"
      }
    /(Ubuntu|Debiad)/: {
     $yum_pachake_name = "yum"
      }
    /(RedHat|Fedora)/: {
     $yum_package_name = "yum"
      }
    }  
  }
