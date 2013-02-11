node default {
$domain = 'Mysqldb.localdomain'}

node /^www\.Mysqldb\.localdomain/ {
         class { 'users':        }
         class { 'apache':       }
         class { 'yum':          }
         class { 'mysql':        }
         class { 'loadbalancer': }
         class { 'selinux':      }
         class { 'puppet':       }
         class { 'ntp':          }
         class { 'sudo':         }
         class { 'ssh':          }
         class { 'ldap':         }
         }   
 Exec { path   => "/bin:/usr/bin:/sbin:/usr/sbin"}
