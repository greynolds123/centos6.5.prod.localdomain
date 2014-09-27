<<<<<<< HEAD
node puppet.puppetlabs.vm {
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

 import "../nodes.pp"
 Exec { path   => "/bin:/usr/bin:/sbin:/usr/sbin"}
=======
node default {
    $domain ='*.qa.localdomain = [ qa ]' }
    if $hostname =~ /^www(\d+)\./ {
    notice {'Your modules will deploy to the qa group':}
    class { 'history':       }
    class { 'nagios':        }
    #class { 'deploy-cobbler':}
    #class { 'bind':          }
    #class { 'mysql':          }
    class { 'webserver':      }
    class { 'users':          }
    #class  { 'apache':        }
    #class  { 'dism':          }
    class  { 'f5':            }
    class  { 'java':          }
    #class  { 'mcollective':   }
    class  { 'netapp':        }
    #class  { 'openstack':     }
    #class  { 'razor':         }
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
    class { 'cron':          }
    class { 'tool':          }
}
Exec { path => '/bin:/usr/bin:/sbin:/usr/sbin' }

>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
