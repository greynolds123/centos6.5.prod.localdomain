class ssh::params {
    case operatingsystem {
      Solaris: {
       $ssh_package_name = 'openssh'
      }
      /(Ubuntu|Debian)/: {
       $ssh_package_name = 'openssh'
      }
      /(RedHat|Fedora|Centos)/: {
       $ssh_package_name = 'openssh'
      }
   }
 }      
