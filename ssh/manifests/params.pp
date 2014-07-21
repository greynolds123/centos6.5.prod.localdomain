class ssh::params {
    case operatingsystem {
      /(Ubuntu|Debian)/: {
       $ssh_package_name = 'openssh'
      }
      /(RedHat|Fedora|Centos|SLES)/: {
       $ssh_package_name = 'openssh'
      }
   }
 }      
