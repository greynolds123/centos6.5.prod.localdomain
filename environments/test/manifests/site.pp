node /^www\.RHEL6.localdomain {
         class { 'loadbalancer': }
         class { 'puppet':       }
         class { 'selinux':      }
         class { 'ntp':          }
         class { 'ssh':          }
         class { 'sudo':         }
         class { 'ldap':         }
         }
