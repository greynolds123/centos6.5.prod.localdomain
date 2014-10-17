class sudo::config {
   if $operatingsystems == '/[Centos|Fedora|Redhat]/' {
   file { '/etc/sudoers':
   ensure  => present,
   owner   => root,
   group   => root,
   mode    => '0600',
   soure   => 'puppet:///modules/sudo/sudoers',
   require => Class['sudo::params'],
     }
    }
   }
   
   if $operatingsystems == '/[Ubuntu|Debian]/' {
   file { '/etc/sudoers':
   ensure => present,
   owner  => root,
   group  => root,
   mode   => '0600',
   source => 'puppet:///modules/sudo/ubuntu_sudoers',
    }
   }


   exec { 'Reload_shell':
   command => '/usr/bin/newgrp',
   path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin',
   onlyif  => '/bin/grep -c /etc/ /etc/sudoers && exit 1 || exit 0',
   }
