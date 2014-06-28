node default {
    $domain ='*.prod.localdomain = [ prod ]' }
    class  { 'history':       }
    class  { 'apache':        }
    #class  { 'dism':          }
    class  { 'f5':            }
    class  { 'java':          }
    #class  { 'mcollective':   }
    class  { 'netapp':        }
    class  { 'openstack':     }
    class  { 'razor':         }
    #class  { 'splunk':        }
    #class  { 'vmware_lib':    }
    class  { 'vmwaretools':   }
    #class  { 'regiastry':     }
    #class { 'nagios':        }
    #class { 'deploy-cobbler':}
    #class { 'bind':          }
    #class { 'mysql':         }
    #class { 'webserver':     }
    #class  { 'users':         }
    #class { 'apache':        }
    #class { 'yum':           }
    #class { 'ntp':           }
    #class { 'ldap':          }
    #class { 'puppet':        }
    #class { 'selinux':       }
    #class { 'loadbalancer':  }
    class  { 'ssh':           }
    #class  { 'sudo':          }
    #class { 'xinetd':        }
   
Exec { path => '/bin:/usr/bin:/sbin:/usr/sbin' }
