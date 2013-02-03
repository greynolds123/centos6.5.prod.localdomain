node default {
$domain = 'RHEL6.localdomain'}

node /^www\.RHEL6.localdomain/ {
         class { 'apache':       }
         class { 'yum':          }
         class { 'loadbalancer': }
         class { 'puppet':       }
         class { 'selinux':      }
         class { 'ntp':          }
         class { 'ssh':          }
         class { 'sudo':         }
         class { 'ldap':         }
         }
