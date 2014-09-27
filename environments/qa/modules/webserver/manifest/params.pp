class webserver::nginx::params {
  case operatingsystem  {
   /(Ubuntu|Debian)/: {
      $nginx_package_name='nginx'
     }
  /(Redhat|Centos|Fedora)/: {
      $nginx_package_name='nginx'
     }
    }
   }
