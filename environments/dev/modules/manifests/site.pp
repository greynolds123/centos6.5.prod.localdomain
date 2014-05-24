node dev {
    $domain ='*.dev.localdomain = [ dev ]' }
    class { 'history':       }
    #class { 'deploy-cobbler':}
    #class { 'bind':          }
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

