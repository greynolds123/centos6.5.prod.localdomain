class sudo::config {
   if $operatingsystems == '/[Centos|Fedora|Redhat]/' {
   file { '/etc/sudoers':
   ensure  => present,
   owner   => root,
   group   => root,
   mode    => "0600",
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

   exec { "Reload_shell":
   command => "/usr/bin/newgrp",
   onlyif  => "/bin/grep -c /etc/ /etc/sudoers && exit 1 || exit 0",
   }
