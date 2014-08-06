node default {
    $domain ='*.prod.localdomain = [ prod ]' }
    if $hostname =~ /^www(\d+)\./ {
    notice("Your modules will deploy to the prod group")
    class { 'history':       }
<<<<<<< HEAD
    #class { 'nagios':        }
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #class { 'nagios':        }
=======
    class { 'nagios':        }
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
    #class { 'nagios':        }
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
    class { 'nagios':        }
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
    #class { 'deploy-cobbler':}
    #class { 'bind':          }
    #class { 'mysql':          }
    #class { 'webserver':      }
    class { 'users':          }
<<<<<<< HEAD
    #class  { 'apache':        }
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #class  { 'apache':        }
=======
    class  { 'apache':        }
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
    #class  { 'apache':        }
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
    class  { 'apache':        }
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
    #class  { 'dism':          }
    class  { 'f5':            }
    class  { 'java':          }
    #class  { 'mcollective':   }
    class  { 'netapp':        }
<<<<<<< HEAD
    #class  { 'openstack':     }
    #class  { 'razor':         }
=======
<<<<<<< HEAD
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
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
    #class  { 'splunk':        }
    #class  { 'vmware_lib':    }
    #class  { 'vmwaretools':   }
    #class  { 'regiastry':     }
    class { 'yum':           }
    #class { 'ntp':           }
<<<<<<< HEAD
    class { 'ldap':          }
=======
<<<<<<< HEAD
    #class { 'ldap':          }
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
    class { 'ldap':          }
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
    class  { 'openstack':     }
    class  { 'razor':         }
    #class  { 'splunk':        }
    #class  { 'vmware_lib':    }
    class  { 'vmwaretools':   }
    #class  { 'regiastry':     }
    #class { 'yum':           }
    #class { 'ntp':           }
    #class { 'ldap':          }
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
    #class { 'puppet':        }
    #class { 'selinux':       }
    #class { 'loadbalancer':  }
    class { 'ssh':           }
    class { 'sudo':          }
    class { 'xinetd':        }
<<<<<<< HEAD
}   
Exec { path => '/bin:/usr/bin:/sbin:/usr/sbin' }

   augeas { 'enable-ip-forwarding':
   context => '/files/etc/sysctl.conf',
   changes => ['set net.ipv4.ip_forward 1'],
 }
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
}   
=======
   
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
}   
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
   
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
Exec { path => '/bin:/usr/bin:/sbin:/usr/sbin' }
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
