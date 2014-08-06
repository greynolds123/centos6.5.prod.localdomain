class selinux::config {
     file { "/etc/selinux/config":
      owner   => "root",
      group   => "root",
      mode    => 0644,
      ensure  => present,
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
      content => template('selinux/selinux.erb'),
=======
      content => templates('selinux/templates/selinux.erb'),
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
      content => templates('selinux/templates/selinux.erb'),
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
      content => templates('selinux/templates/selinux.erb'),
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
      require => Class['selinux::install'],
      notify  => Class['selinux::service']
    }
  }
