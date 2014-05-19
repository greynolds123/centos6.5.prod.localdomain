node RHEL5.localdomain {
       class { 'history':       }
       class { 'deploy-cobbler':}
       class { 'bind':          }
       class { 'users':         }
       class { 'apache':        }
       class { 'yum':           }
       class { 'loadbalancer':  }
       class { 'puppet':        }
       class { 'selinux':       }
       class { 'ntp':           }
       class { 'ssh':           } 
       class { 'sudo':          }
       class { 'ldap':          }
       }
 import "../nodes.pp"
 Exec { path   => "/bin:/usr/bin:/sbin:/usr/sbin"}
