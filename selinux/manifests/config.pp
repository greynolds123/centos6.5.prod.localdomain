class selinux::config {
     file { "/etc/selinux/config":
      owner   => "root",
      group   => "root",
      mode    => 0644,
      ensure  => present,
      content => puppet://$puppetserver/modules/selinux/templates/config.erb',
      require => Class['selinux::install'],
      notify  => Class['selinux::service']
    }
  }
