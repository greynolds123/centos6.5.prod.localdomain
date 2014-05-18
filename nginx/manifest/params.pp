class nginx::params {
<<<<<<< HEAD
  case operatingsystem ? {
   /(Ubuntu|Debian)/: {
  $nginx_package_name='nginx' 
     }
  /(Redhat|Centos|Fedora)/: {
=======
  case operatingsystem {
   /(Ubuntu|Debian)/:{
  $nginx_package_name='nginx' 
     }
  /(Redhat|Centos|Fedora)/:{
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
   $nginx_package_name='nginx'
     }
    }
   } 
