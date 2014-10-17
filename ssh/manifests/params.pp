class ssh::params {
    case operatingsystem {
<<<<<<< HEAD
      Solaris: {
       $ssh_package_name = 'openssh'
      }
=======
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      /(Ubuntu|Debian)/: {
       $ssh_package_name = 'openssh'
      }
      /(RedHat|Fedora|Centos)/: {
       $ssh_package_name = 'openssh'
      }
   }
<<<<<<< HEAD
 }      
=======
 }
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
