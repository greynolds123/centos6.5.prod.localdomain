<<<<<<< HEAD
node prod {
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
   
exec { path ='/bin:/usr/bin:/sbin:/usr/sbin' }
=======
node default {
    $domain ='*.prod.localdomain = [ prod ]' }
    class { 'history':       }
    #class { 'deploy-cobbler':}
    #class { 'bind':          }
    class { 'mysql':          }
    class { 'webserver':      }
    class { 'users':         }
    #class { 'apache':        }
    #class { 'yum':           }
    #class { 'ntp':           }
    #class { 'ldap':          }
    #class { 'puppet':        }
    #class { 'selinux':       }
    #class { 'loadbalancer':  }
    #class { 'ssh':           }
    #class { 'sudo':          }
   
Exec { path => '/bin:/usr/bin:/sbin:/usr/sbin' }
>>>>>>> 5f545de760de109de51569a8ad80c5747f91d1bc
