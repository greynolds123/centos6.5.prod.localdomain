class sudo::config {
   file { '/etc/suoers':
   ensure  => present,
   owner   => root,
   group   => root,
   mode    => "0600",
   soure   => 'file:///modules/sudoers',
   require => Class['sudo::params'],
   }
  }

   exec { "Reload_shell":
   command => "/usr/bin/newgrp",
   onlyif  => "/bin/grep -c /etc/ /etc/sudoers && exit 1 || exit 0",
   }
