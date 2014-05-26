node Mysqldb.localdomain {
         class { 'history':       }
         class { 'deploy-cobbler':}
         class { 'bind':          }
         class { 'users':         }
         class { 'apache':        }
         class { 'yum':           }
         class { 'mysql':         }
         class { 'loadbalancer':  }
         class { 'selinux':       }
         class { 'puppet':        }
         class { 'ntp':           }
         class { 'sudo':          }
         class { 'ssh':           }
         class { 'ldap':          }
         }   
 import ../nodes.pp
 Exec { path   => "/bin:/usr/bin:/sbin:/usr/sbin"}

