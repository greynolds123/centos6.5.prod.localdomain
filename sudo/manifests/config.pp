class sudo::config {
<<<<<<< HEAD
   if $operatingsystems == '/[Centos|Fedora|Redhat|SLES]/' {
=======
   if $operatingsystems == '/[Centos|Fedora|Redhat]/' {
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
   file { '/etc/sudoers':
   ensure  => present,
   owner   => root,
   group   => root,
<<<<<<< HEAD
   mode    => "0600",
   soure   => 'puppet:///modules/sudo/sudo.conf',
=======
   mode    => '0600',
   soure   => 'puppet:///modules/sudo/sudoers',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
   require => Class['sudo::params'],
     }
    }
   }
<<<<<<< HEAD

   if $operatingsystems == '/[Ubuntu|Debian]/' {
   file { '/etc/sudoers':
   ensure  => present,
   owner   => root,
   group   => root,
   mode    => "0600",
   source  => 'puppet:///modules/sudo/ubuntu_sudoers',
    }
   }

   
  

   exec { "Reload_shell":
   command => "/usr/bin/newgrp",
   onlyif  => "/bin/grep -c /etc/ /etc/sudoers && exit 1 || exit 0",
=======
   
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
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
   }
