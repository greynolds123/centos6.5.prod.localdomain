node 'centos6.5.localdomain' {
         class { 'history':       }
         class { 'deploy-cobbler':}
         class { 'bind':          }
         class { 'users':         }
         class { 'apache':        }
         class { 'yum':           }
         class { 'ntp':           }
         class { 'ldap':          }
         class { 'puppet':        }
         class { 'selinux':       }
         class { 'loadbalancer':  }
         class { 'ssh':           }
         class { 'sudo':          }
         }
<<<<<<< HEAD
import "../modules/nodes.pp"
 Exec { path   => "/bin:/usr/bin:/sbin:/usr/sbin"}
=======
import '../modules/nodes.pp'
 Exec { path   => '/bin:/usr/bin:/sbin:/usr/sbin'}
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
