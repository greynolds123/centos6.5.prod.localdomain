node default {
$domain = 'Managed.local' }

node /^www\.Managed\.local/ {
         class { 'history':       }
         class { 'deploy-cobbler':}
         class { 'bind':          }
         class { 'users':         }
         class { 'apache':        }
         class { 'yum':           }
         class { 'ntp':           }
         class { 'ldap':          }
         class { 'puppet':        }
         class { 'selinux':       }
         class { 'loadbalancer':  }
         class { 'ssh':           }
         class { 'sudo':          }
         }
 Exec { path   => "/bin:/usr/bin:/sbin:/usr/sbin"}

