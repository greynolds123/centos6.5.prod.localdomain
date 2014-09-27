class ssh::params {
   case operatingsystem {
    Solaris: {
<<<<<<< HEAD
     $yum_package_name = "yum"
      }
    /(Ubuntu|Debian)/: {
     $yum_pachake_name = "yum"
      }
    /(RedHat|Fedora)/: {
     $yum_package_name = "yum"
      }
    }  
=======
     $yum_package_name = 'yum'
      }
    /(Ubuntu|Debian)/: {
     $yum_pachake_name = 'yum'
      }
    /(RedHat|Fedora)/: {
     $yum_package_name = 'yum'
      }
    }
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
  }
