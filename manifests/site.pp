node prod {
    $domain ='*.prod.localdomain = [ prod ]' }
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
    }
   
Exec { Path ='/bin:/usr/bin:/sbin:/usr/sbin' }
