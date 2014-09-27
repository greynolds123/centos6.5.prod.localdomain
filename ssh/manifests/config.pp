<<<<<<< HEAD
class ssh::config {    
    if $operatingsystems == '/[Centos|Fedora|Redhat|SLES]/' {
    file { "/etc/ssh/ssh_config":  
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    source  => 'puppet:///modules/ssh/ssh_config',
    require => Class['ssh::install'],
    notify  => Class['ssh::service'],
     }
   }
}
    if $operatingsystems == '/[Centos|Fedora|Redhat|SLES]/' {
    file { "/etc/sh/sshd_config":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
=======
class ssh::config {
   file { '/etc/issue.net':
   ensure => present,
   owner  => 'root',
   group  => 'root',
   mode   => '0644',
   source => 'puppet:///modules/ssh/issue',
   }
  
    file { '/etc/ssh/ssh_config':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/ssh/ssh_config',
    require => Class['ssh::install'],
    notify  => Class['ssh::service'],
   }
    file { '/etc/ssh/sshd_config':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
    source  => 'puppet:///modules/ssh/sshd_config',
    require => Class['ssh::install'],
    notify  => Class['ssh::service'],
     }
<<<<<<< HEAD
   }  

class ssh::config {
    if $operatingsystems == '/[Centos|Fedora|Redhat|SLES]/' {
    file { "/etc/ssh/ssh_config":  
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    source  => 'puppet:///modules/ssh/ssh_config',
    require => Class['ssh::install'],
    notify  => Class['ssh::service'],
     }
   }
}
    if $operatingsystems == '/[Centos|Fedora|Redhat|SLES]/' {
    file { "/etc/sh/sshd_config":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    source  => 'puppet:///modules/ssh/sshd_config',
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
=======
   }

    if $macaddress == '/[00:0C:29:DF:F7:2A]/' {
    file { '/etc/ssh/sshd_config':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/ssh/rhel_sshd_config',
    require => Class['ssh::install'],
    notify  => Class['ssh::service'],
     }
    }


   elsif $operatingsystems == '/[Ubuntu|Debian]/' {
   file { '/etc/ssh/ssh_config':
   ensure  => present,
   owner   => 'root',
   group   => 'root',
   mode    => '0644',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
   source  => 'puppet:///modules/ssh/ubuntu_ssh_config',
   require => Class['ssh::install'],
   notify  => Class['ssh::service'],
    }
<<<<<<< HEAD
  }  
   
   elsif $operatingsystems == '/[Ubuntu|Debian]/' {
   file { "/etc/ssh/sshd_config":
   ensure  => present,
   owner   => 'root',
   group   => 'root',
   mode    => '0600',
=======
  }
   
   elsif $operatingsystems == '/[Ubuntu|Debian]/' {
   file { '/etc/ssh/sshd_config':
   ensure  => present,
   owner   => 'root',
   group   => 'root',
   mode    => '0644',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
   source  => 'puppet:///modules/ssh/ubuntu_sshd_config',
   require => Class['ssh::install'],
   notify  => Class['ssh::service'],
    }
  }
