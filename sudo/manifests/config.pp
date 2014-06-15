class sudo::config {
   file { '/etc/sudoers':
   ensure  => present,
   owner   => root,
   group   => root,
   mode    => "0600",
<<<<<<< HEAD
   soure   => 'file:///modules/sudo/sudo.conf',
   require => Class['sudo::params'],
    }
   }
=======
   source  => 'file:///modules/sudo/sudoers',
   }
  }

>>>>>>> d5175455e5b00f8d9b82f278d6ddb99cedc67e13
   exec { "Reload_shell":
   command => "/usr/bin/newgrp",
   onlyif  => "/bin/grep -c /etc/ /etc/sudoers && exit 1 || exit 0",
   }
