node default {
    $domain ='*.prod.localdomain = [ prod ]' }
    if $hostname =~ /^www(\d+)\./ {
    notice("Your modules will deploy to the prod group")
    class { 'history':       }
<<<<<<< HEAD
<<<<<<< HEAD
    #class { 'nagios':        }
=======
    class { 'nagios':        }
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
    #class { 'nagios':        }
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
    #class { 'deploy-cobbler':}
    #class { 'bind':          }
    #class { 'mysql':          }
    #class { 'webserver':      }
    class { 'users':          }
<<<<<<< HEAD
<<<<<<< HEAD
    #class  { 'apache':        }
=======
    class  { 'apache':        }
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
    #class  { 'apache':        }
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
    #class  { 'dism':          }
    class  { 'f5':            }
    class  { 'java':          }
    #class  { 'mcollective':   }
    class  { 'netapp':        }
<<<<<<< HEAD
<<<<<<< HEAD
    #class  { 'openstack':     }
    #class  { 'razor':         }
    #class  { 'splunk':        }
    #class  { 'vmware_lib':    }
    #class  { 'vmwaretools':   }
    #class  { 'regiastry':     }
    class { 'yum':           }
    #class { 'ntp':           }
    class { 'ldap':          }
=======
    class  { 'openstack':     }
    class  { 'razor':         }
=======
    #class  { 'openstack':     }
    #class  { 'razor':         }
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
    #class  { 'splunk':        }
    #class  { 'vmware_lib':    }
    #class  { 'vmwaretools':   }
    #class  { 'regiastry':     }
    class { 'yum':           }
    #class { 'ntp':           }
<<<<<<< HEAD
    #class { 'ldap':          }
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
    class { 'ldap':          }
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
    #class { 'puppet':        }
    #class { 'selinux':       }
    #class { 'loadbalancer':  }
    class { 'ssh':           }
    class { 'sudo':          }
    class { 'xinetd':        }
<<<<<<< HEAD
<<<<<<< HEAD
}   
=======
   
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
}   
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
Exec { path => '/bin:/usr/bin:/sbin:/usr/sbin' }
