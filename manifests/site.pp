node default {
    $domain ='*.prod.localdomain = [ prod ]' }
    class { 'history':       }
    #class { 'nagios':        }
    #class { 'deploy-cobbler':}
    #class { 'bind':          }
    class { 'tftp':          }
    #class { 'mysql':          }
    #class { 'webserver':      }
    #class { 'users':          }
    #class { 'apache':        }
    #class { 'yum':           }
    #class { 'ntp':           }
    #class { 'ldap':          }
    #class { 'puppet':        }
    #class { 'selinux':       }
    #class { 'loadbalancer':  }
    class { 'ssh':           }
    #class { 'sudo':          }
    #class { 'xinetd':        }
   
Exec { path => '/bin:/usr/bin:/sbin:/usr/sbin' }
