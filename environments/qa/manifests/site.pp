node default {
$domain = 'puppet.puppetlabs.vm'}

node /^www\.puppet\.puppetlabs\.vm/ {
        class { 'loadbalancer': }
        class { 'selinux':      }
        class { 'puppet':       }
        class { 'ntp':          }
        class { 'ssh':          }
        class { 'sudo':         }
        class { 'ldap':         }
        }

