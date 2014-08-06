class selinux::config {
     file { "/etc/selinux/config":
      owner   => "root",
      group   => "root",
      mode    => 0644,
      ensure  => present,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
      content => template('selinux/selinux.erb'),
=======
      content => templates('selinux/templates/selinux.erb'),
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
<<<<<<< HEAD
=======
      content => templates('selinux/templates/selinux.erb'),
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
      require => Class['selinux::install'],
      notify  => Class['selinux::service']
    }
  }
