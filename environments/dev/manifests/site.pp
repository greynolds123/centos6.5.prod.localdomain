node default {
$domain = 'Managed.local' }

node /^www\.Managed\.local/ {
         class { 'ssh':  }
         class { 'sudo': }
         }
