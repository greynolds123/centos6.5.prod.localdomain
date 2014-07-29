node default {
    $domain ='*.prod.localdomain = [ prod ]' }
<<<<<<< HEAD
    if $hostname =~ /^www(\d+)\./ {
     notice("You modules will deploy from the prod group")
    class { 'history':       }
    class { 'nagios':        }
    #class { 'deploy-cobbler':}
    #class { 'bind':          }
    #class { 'mysql':          }
    #class { 'webserver':      }
    class { 'users':          }
=======
<<<<<<< HEAD
    if $hostname =~ /^www(\d+)\./ {
     notice("You modules will deploy from the prod group")
    class { 'history':       }
<<<<<<< HEAD
    class { 'nagios':        }
    class { 'razor':         }
=======
=======
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
>>>>>>> d49ee81b057c6a83ce6b9bca8a3c8413f86d56df
    #class { 'nagios':        }
>>>>>>> 10df0475a7d4f20c03ad477f6cde51bc4cad5e13
    #class { 'deploy-cobbler':}
    #class { 'bind':          }
    #class { 'mysql':         }
    #class { 'webserver':     }
    #class  { 'users':         }
>>>>>>> de97c461b67f2d44779eaf61d0a3a1b8ff2a9e0f
    #class { 'apache':        }
    #class { 'yum':           }
    #class { 'ntp':           }
    #class { 'ldap':          }
    #class { 'puppet':        }
    #class { 'selinux':       }
    #class { 'loadbalancer':  }
<<<<<<< HEAD
    class { 'ssh':           }
    class { 'sudo':          }
    }

=======
<<<<<<< HEAD
    class { 'ssh':           }
<<<<<<< HEAD
    class { 'sudo':          }
    }

=======
    #class { 'sudo':          }
=======
    class  { 'ssh':           }
    #class  { 'sudo':          }
>>>>>>> d49ee81b057c6a83ce6b9bca8a3c8413f86d56df
    #class { 'xinetd':        }
   
>>>>>>> 10df0475a7d4f20c03ad477f6cde51bc4cad5e13
>>>>>>> de97c461b67f2d44779eaf61d0a3a1b8ff2a9e0f
Exec { path => '/bin:/usr/bin:/sbin:/usr/sbin' }
