node default {
$domain = 'puppet.puppetlabs.vm'}

node /^www\.puppet\.puppetlabs\.vm/ {
        class { 'ssh':  }
        class { 'sudo': }
        class { 'ldap': }
        }

