class selinux::config {
     file { "/etc/selinux/config":
      owner   => "root",
      group   => "root",
      mode    => 0644,
      ensure  => present,
      content => templates('selinux/templates/config.erb'),
      require => Class['selinux::install'],
      notify  => Class['selinux::service']
    }
  }
