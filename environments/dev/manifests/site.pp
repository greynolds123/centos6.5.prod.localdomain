node default {
$domain = 'Managed.local' }

node /^www\.Managed\.local/ {
         class { 'ntp':          }
         class { 'ldap':         }
         class { 'puppet':       }
         class { 'selinux':      }
         class { 'loadbalancer': }
         class { 'ssh':          }
         class { 'sudo':         }
         }
