class sudo::config {
   if $operatingsystems == '/[Centos|Fedora|Redhat]/' {
   file { '/etc/sudoers':
   ensure  => present,
   owner   => root,
   group   => root,
   mode    => "0600",
<<<<<<< HEAD
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
=======
   source  => 'puppet:///modules/sudo/sudoers',
   }
  }

   if $operatingsystems == '/[Ubuntu|Debian]/' {
   file { '/etc/sudoers':
   ensure  => present,
   owner   => root,
   group   => root,
   mode    => "0600",
   source  => 'puppet:///modules/sudo/ubuntu_sudoers',
   }
  }
}

>>>>>>> 6f3e1cafb3745b00a29bcd5d6a0bc316eb7e9d5f
   exec { "Reload_shell":
   command => "/usr/bin/newgrp",
   onlyif  => "/bin/grep -c /etc/ /etc/sudoers && exit 1 || exit 0",
   }
