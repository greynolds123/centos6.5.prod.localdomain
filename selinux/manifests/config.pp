class selinux::config {
<<<<<<< HEAD
     file { "/etc/selinux/config":
      owner   => "root",
      group   => "root",
      mode    => 0644,
      ensure  => present,
      content => templates('selinux/templates/selinux.erb'),
=======
     file { '/etc/selinux/config':
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      ensure  => present,
      content => template('selinux/selinux.erb'),
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      require => Class['selinux::install'],
      notify  => Class['selinux::service']
    }
  }
