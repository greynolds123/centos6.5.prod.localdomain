class ssh::params {
    case operatingsystem {
      Solaris: {
       $ssh_package_name = 'sshd'
      }
      /(Ubuntu|Debian)/: {
       $ssh_package_name = 'sshd'
      }
      /(RedHat|Fedora|Centos)/: {
       $ssh_package_name = 'sshd'
      }
   }
 }      
