node /^www\.RHEL6.localdomain {
         class { 'ssh':  }
         class { 'sudo': }
         class { 'ldap': }
         }
