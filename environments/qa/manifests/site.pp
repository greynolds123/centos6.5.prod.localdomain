node default {
        class { 'history':       }
        class { 'deploy-cobbler':}
        class { 'bind':          }
        class { 'users':         }
        class { 'apache':        }
        class { 'yum':           }
        class { 'loadbalancer':  }
        class { 'selinux':       }
        class { 'puppet':        }
        class { 'ntp':           }
        class { 'ssh':           }
        class { 'sudo':          } 
        class { 'ldap':          }
        }

 Exec { path   => "/bin:/usr/bin:/sbin:/usr/sbin"}
