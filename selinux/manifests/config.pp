class selinux::config {
     file { "/etc/selinux/config":
      owner   => "root",
      group   => "root",
      mode    => 0644,
      ensure  => present,
<<<<<<< HEAD
      content => template('selinux/selinux.erb'),
=======
      content => templates('selinux/templates/selinux.erb'),
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
      require => Class['selinux::install'],
      notify  => Class['selinux::service']
    }
  }
