class apache::params {
   case operatingsystem {
      Solaris: {
       $apache_package_name = 'httpd'
      }
      /(Ubuntu|Debian)/: {
       $apache_package_name = 'httpd'
      }
      /(RedHat|Fedora)/: {
       $apache_package_name = 'httpd'
      }
    }
  }
