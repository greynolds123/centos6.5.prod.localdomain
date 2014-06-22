node default {
    $domain ='*.prod.localdomain = [ prod ]' }
    if $hostname =~ /^www(\d+)\./ {
     notice("You modules will deploy from the prod group")
    class { 'history':       }
<<<<<<< HEAD
    class { 'nagios':        }
    class { 'razor':         }
=======
    #class { 'nagios':        }
>>>>>>> 10df0475a7d4f20c03ad477f6cde51bc4cad5e13
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
<<<<<<< HEAD
    class { 'sudo':          }
    }

=======
    #class { 'sudo':          }
    #class { 'xinetd':        }
   
>>>>>>> 10df0475a7d4f20c03ad477f6cde51bc4cad5e13
Exec { path => '/bin:/usr/bin:/sbin:/usr/sbin' }
