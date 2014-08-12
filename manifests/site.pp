node default {
    $domain ='*.prod.localdomain = [ prod ]' }
    if $hostname =~ /^www(\d+)\./ {
    notice("Your modules will deploy to the prod group")
    class { 'history':       }
<<<<<<< HEAD
    #class { 'nagios':        }
=======
    class { 'nagios':        }
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
    #class { 'deploy-cobbler':}
    #class { 'bind':          }
    #class { 'mysql':          }
    #class { 'webserver':      }
    class { 'users':          }
    #class  { 'apache':        }
    #class  { 'dism':          }
    class  { 'f5':            }
    class  { 'java':          }
    #class  { 'mcollective':   }
    class  { 'netapp':        }
    #class  { 'openstack':     }
    #class  { 'razor':         }
<<<<<<< HEAD
=======
    #class  { 'openstack':     }
    #class  { 'razor':         }
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
    #class  { 'splunk':        }
    #class  { 'vmware_lib':    }
    #class  { 'vmwaretools':   }
    #class  { 'regiastry':     }
    class { 'yum':           }
    #class { 'ntp':           }
    class { 'ldap':          }
    #class { 'puppet':        }
    #class { 'selinux':       }
    #class { 'loadbalancer':  }
    class { 'ssh':           }
    class { 'sudo':          }
    class { 'xinetd':        }
<<<<<<< HEAD
    class { 'r10k:':         }
    class { 'git':           }
    class { 'vcsrepo':       }
    class { 'vagrant':       }
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
}   
Exec { path => '/bin:/usr/bin:/sbin:/usr/sbin' }
