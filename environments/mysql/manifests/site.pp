node default {
    $domain ='*.mysql.localdomain = [ mysql ]' }
    if $hostname =~ /^www(\d+)\./ {
    notice {"Your modules will deploy to the mysql group":}
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

