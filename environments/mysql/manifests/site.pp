node default {
$domain = 'Mysqldb.localdomain'}

node /^www\.Mysqldb\.localdomain/ {
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
