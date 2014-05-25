class deploy_nginx::params {
  case operatingsystem {
   /(Ubuntu|Debian)/:{
  $deploy_nginx_package_name='nginx' 
     }
  /(Redhat|Centos|Fedora)/:{
   $deploy_nginx_package_name='nginx'
     }
    }
   } 
