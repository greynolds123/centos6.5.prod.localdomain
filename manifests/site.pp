node default {
    $domain ='*.prod.localdomain = [ prod ]' }
    if $hostname =~ /^www(\d+)\./ {
    notice("Your modules will deploy to the prod group")
    class { 'history':       }
    class { 'nagios':        }
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

   augeas { 'enable-ip-forwarding':
   context => '/files/etc/sysctl.conf',
   changes => ['set net.ipv4.ip_forward 1']
   
augeas { 'rsyslog_config':
  context  => "/files/etc/rsyslog.conf",
   changes => [
    "set $ModLoad imudp",
    "set $UDPServerRun 514",
    "set $WorkDirectory '/var/lib/rsyslog'",
    "set $ActionFileDefaultTemplate RSYSLOG_TraditionalFileFormat",
    "set $IncludeConfig '/etc/rsyslog.d/*.conf'",
    "set $OmitLocalLogging on",
    "set $IMJournalStateFile imjournal.state",
    "set *.info;mail.none;authpriv.none;cron.none  '/var/log/messages'",
    "set authpriv.*                                '/var/log/secure'",
    "set mail.*                                    '-/var/log/maillog'",
    "set cron.*                                    '/var/log/cron'",
    "set *.emerg                                   ':omusrmsg:*'",
    "set uucp,news.crit                            '/var/log/spooler'",
    "set local7.*                                  '/var/log/boot.log'",
    "set entry[last()+1]/selector/facility local2",
    "set entry[last()]/selector/level *",
    "set entry[last()]/action/file 'var/log/haproxy/haproxy.log'",
    ],
   }
   
