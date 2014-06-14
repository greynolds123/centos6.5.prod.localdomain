node default {
    $domain ='*.prod.localdomain = [ prod ]' }
    class { 'history':       }
    class { 'deploy-cobbler':}
    #class { 'bind':          }
    #class { 'mysql':          }
    #class { 'webserver':      }
    class { 'users':          }
    class { 'utilities':      }
    #class { 'apache':        }
    #class { 'yum':           }
    #class { 'ntp':           }
    #class { 'ldap':          }
    #class { 'puppet':        }
    #class { 'selinux':       }
    #class { 'loadbalancer':  }
    #class { 'ssh':           }
    class { 'sudo':          }
   
Exec { path => '/bin:/usr/bin:/sbin:/usr/sbin' }
