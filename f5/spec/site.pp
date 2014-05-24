node 'centos6.5.localdomain' {
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
import "../moduless/nodes.pp"
 Exec { path   => "/bin:/usr/bin:/sbin:/usr/sbin"}
