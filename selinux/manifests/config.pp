class selinux::config {
     file { "/etc/selinux/config":
      owner   => "root",
      group   => "root",
      mode    => 0644,
      ensure  => present,
      content => template('selinux/templates/config.erb'),
    }
  }
