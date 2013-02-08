node default {
$domain = 'RHEL5.localdomain'}

node /^www\.RHEL5\.lcoaldomain/ {
       calss { 'apache':       }
       class { 'yum':          }
       class { 'loadbalancer': }
       class { 'puppet':       }
       class { 'selinux':      }
       class { 'ntp':          }
       class { 'ssh':          }
       class { 'sudo':         }
       class { 'ldap':         }
       }
 Exec { path   => "/bin:/usr/bin:/sbin:/usr/sbin"}
