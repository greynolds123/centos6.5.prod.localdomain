<<<<<<< HEAD
node Mysqldb.localdomain {
         class { 'history':       }
         class { 'deploy-cobbler':}
         class { 'bind':          }
         class { 'users':         }
         class { 'apache':        }
         class { 'yum':           }
         class { 'mysql':         }
         class { 'loadbalancer':  }
         class { 'selinux':       }
         class { 'puppet':        }
         class { 'ntp':           }
         class { 'sudo':          }
         class { 'ssh':           }
         class { 'ldap':          }
         }   
 import ../nodes.pp
 Exec { path   => "/bin:/usr/bin:/sbin:/usr/sbin"}
=======
node default {
    $domain ='*.mysql.localdomain = [ mysql ]' }
    if $hostname =~ /^www(\d+)\./ {
    notice {'Your modules will deploy to the mysql group':}
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

