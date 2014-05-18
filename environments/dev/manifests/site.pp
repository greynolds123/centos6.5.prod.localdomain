<<<<<<< HEAD
node dev {
    class { 'dev':
    $domain ='*.dev.localdomain  = [ dev ]' }
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
=======
node Managed.local {
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
import "../nodes.pp"
 Exec { path   => "/bin:/usr/bin:/sbin:/usr/sbin"}
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281

