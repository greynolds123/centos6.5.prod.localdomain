node prod {
    class { 'history':       }
    #class { 'nginx':         }
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
   
exec { path ='/bin:/usr/bin:/sbin:/usr/sbin' }
