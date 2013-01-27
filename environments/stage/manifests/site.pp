node default {
$domain = 'RHEL5.localdomain'}

node /^www\.RHEL5\.lcoaldomain/ {
         class { 'ssh':  }
         class { 'sudo': }
         class { 'ldap': }
         }
