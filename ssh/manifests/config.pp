class ssh::config {
    if $operatingsystems == '/[Centos|Fedora|Redhat]/' {
    file { "/etc/ssh/ssh_config":  
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    source  => 'file:///modules/ssh/ssh_config',
    require => Class['ssh::install'],
    notify  => Class['ssh::service'],
     }
   }
}
    if $operatingsystems == '/[Centos|Fedora|Redhat]/' {
    file { "/etc/sh/sshd_config":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    source  => 'file:///modules/ssh/sshd_config',
    require => Class['ssh::install'],
    notify  => Class['ssh::service'],
     }
   }  

   elsif $operatingsystems == '/[Ubuntu|Debian]/' {
   file { "/etc/ssh/ssh_config":
   ensure  => present,
   owner   => 'root',
   group   => 'root',
   mode    => '0600',
<<<<<<< HEAD
   source  => 'file:///modules/ssh/ssh_config',
=======
   source  => 'file:///modules/ssh/ubuntu_ssh_config',
>>>>>>> de97c461b67f2d44779eaf61d0a3a1b8ff2a9e0f
   require => Class['ssh::install'],
   notify  => Class['ssh::service'],
    }
  }  
   
   elsif $operatingsystems == '/[Ubuntu|Debian]/' {
   file { "/etc/ssh/sshd_config":
   ensure  => present,
   owner   => 'root',
   group   => 'root',
   mode    => '0600',
<<<<<<< HEAD
   source  => 'file:///modules/ssh/sshd_config',
=======
   source  => 'file:///modules/ssh/ubuntu_sshd_config',
>>>>>>> de97c461b67f2d44779eaf61d0a3a1b8ff2a9e0f
   require => Class['ssh::install'],
   notify  => Class['ssh::service'],
    }
  }
   
