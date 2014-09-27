class webserver::nginx::params {
  case operatingsystem  {
   /(Ubuntu|Debian)/: {
<<<<<<< HEAD
      $nginx_package_name='nginx' 
=======
      $nginx_package_name='nginx'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
     }
  /(Redhat|Centos|Fedora)/: {
      $nginx_package_name='nginx'
     }
    }
<<<<<<< HEAD
   } 
=======
   }
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
