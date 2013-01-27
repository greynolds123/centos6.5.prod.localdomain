node default {
$domain = 'Mysqldb.localdomain'}

node /^www\.Mysqldb\.localdomain/ {
         class { 'sudo': }
         class { 'ssh':  }
         class { 'ldap': }
         }   
