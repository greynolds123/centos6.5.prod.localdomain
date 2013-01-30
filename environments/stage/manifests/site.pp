node default {
$domain = 'RHEL5.localdomain'}

node /^www\.RHEL5\.lcoaldomain/ {
       class { 'loadbalancer': }
       class { 'puppet':       }
       class { 'selinux':      }
       class { 'ntp':          }
       class { 'ssh':          }
       class { 'sudo':         }
       class { 'ldap':         }
       }
