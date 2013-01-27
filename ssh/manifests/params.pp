class ssh::params {
    case operatingsystem {
      Solaris: {
       $ssh_package_name = 'ssh'
      }
      /(Ubuntu|Debian)/: {
       $ssh_package_name = 'ssh'
      }
      /(RedHat|Centos|Fedora)/:
       $ssh_package_name = 'ssh'
      }
   }
 }
       
